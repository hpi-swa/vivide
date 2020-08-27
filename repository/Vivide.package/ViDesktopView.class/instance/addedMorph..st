morphic - submorphs
addedMorph: aMorph

	aMorph isPane ifTrue: [
			self addPane: aMorph].
	^ super addedMorph: aMorph.