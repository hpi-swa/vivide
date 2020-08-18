accessing
layoutOutset: anObject

	self fullBounds; changed.
	
	layoutOutset := anObject.
	
	self layoutChanged.
	self fullBounds; changed.