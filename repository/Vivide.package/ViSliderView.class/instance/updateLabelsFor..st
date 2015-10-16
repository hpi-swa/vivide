as yet unclassified
updateLabelsFor: nodes

	self labelsBox removeAllMorphs.

	((nodes
		collect: [:node | node at: #text])
		reject: [:o | o isNil])
		do: [:text | self labelsBox addMorphBack: text asMorph]
		separatedBy: [self labelsBox addMorphBack: (Morph new color: Color transparent; vResizing: #spaceFill)].