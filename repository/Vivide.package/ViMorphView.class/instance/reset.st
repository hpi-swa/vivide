initialization
reset
	"Configure my view with actual data."

	self removeAllMorphs.	
	self model ifNotNil: [:m |
		m nodes do: [:node | self addMorphBack: ((node object isMorph
			ifTrue: [node object]
			ifFalse: [(node at: #morph ifAbsent: [nil]) in: [:o | o isMorph
				ifTrue: [o] ifFalse: ['No morph found.' asText asMorph]]])
				topLeft: self topLeft)].
		self bounds: self submorphBounds].