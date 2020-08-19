geometry - layout
layoutOutset: anObject

	self fullBounds; changed.
	
	self setProperty: #layoutOutset toValue: anObject.
	
	self removeProperty: #dropShadow.
	self layoutChanged.
	self fullBounds; changed.