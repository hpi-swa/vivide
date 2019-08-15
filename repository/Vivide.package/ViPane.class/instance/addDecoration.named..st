decorations
addDecoration: morph named: name

	morph name: name.
	morph setProperty: #isDecoration toValue: true.
	self addMorphFront: morph.
	^ morph