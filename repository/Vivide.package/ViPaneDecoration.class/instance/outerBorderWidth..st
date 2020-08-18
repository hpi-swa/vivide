accessing
outerBorderWidth: anObject

	self fullBounds; changed.

	outerBorderWidth := anObject.

	self layoutChanged.
	self fullBounds; changed.