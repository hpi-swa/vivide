initialization
reset
	"Configure my view with actual data."

	self container removeAllMorphs.
	lastPoints := OrderedCollection new.
		
	self model ifNotNil: [:m |
		m nodes do: [:node | 
			
			self container addMorphBack: ((node object isMorph
				ifTrue: [node object]
				ifFalse: [(node at: #morph ifAbsent: [nil]) in: [:o | o isMorph
					ifTrue: [o] ifFalse: ['No morph found.' asText asMorph]]])
					topLeft: 0@0).
					
			(node at: #pins ifAbsent: [#()])
				do: [:pt | self addPinAt: pt]].

		self container extent: self container submorphBounds extent.
		self updateScale].
	
	self yield: (lastPoints collect: [:ea | Dictionary newFrom: {#object -> ea}]).