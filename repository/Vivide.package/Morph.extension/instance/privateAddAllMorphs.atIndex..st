*vivide-morphic-override
privateAddAllMorphs: aCollection atIndex: index
	"Private. Add aCollection of morphs to the receiver"
	| myWorld otherSubmorphs offset |
	(index between: 1 and: submorphs size+1)
		ifFalse: [^ self error: 'index out of range'].
	myWorld := self world.
	otherSubmorphs := submorphs copyWithoutAll: aCollection.
	offset := aCollection count: [:m | (submorphs indexOf: m) between: 1 and: index - 1].
	submorphs := otherSubmorphs copyReplaceFrom: index-offset to: index-offset-1 with: aCollection.
	aCollection do: [:m | | itsOwner itsWorld |
		itsOwner := m owner.
		itsOwner ifNotNil: [
			itsWorld := m world.
			(itsWorld == myWorld) ifFalse: [
				itsWorld ifNotNil: [self privateInvalidateMorph: m].
				m outOfWorld: itsWorld].
			(itsOwner ~~ self) ifTrue: [
				m owner privateRemove: m.
				m owner removedMorph: m ]].
		m privateOwner: self.
		myWorld ifNotNil: [self privateInvalidateMorph: m].
		(myWorld == itsWorld) ifFalse: [m intoWorld: myWorld].
		itsOwner == self ifFalse: [
			self addedMorph: m.
			m noteNewOwner: self ].
	].
	self layoutChanged.
