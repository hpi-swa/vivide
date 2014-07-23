add/remove - columns
addColumnFor: anEditor inFrontOf: anotherMorph

	| column |
	column := (self addColumnInFrontOf: anotherMorph)
		addMorphBack: anEditor.

	column width: (column optimalWidth min: 500).
	anEditor grabKeyboard.
	
	self fullBounds.
	self flag: #magicNumber.
	self focusChanged: (anEditor column fullBoundsInWorld outsetBy: (0@0 corner: 10@0) "resize handle").
	
	^ column