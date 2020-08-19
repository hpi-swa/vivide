accessing
outerBorderWidth: anObject

	self fullBounds; changed.

	self setProperty: #outerBorderWidth toValue: anObject.

	self removeProperty: #dropShadow.
	self layoutChanged.
	self fullBounds; changed.