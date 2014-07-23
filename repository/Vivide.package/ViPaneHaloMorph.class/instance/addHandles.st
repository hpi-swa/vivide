as yet unclassified
addHandles

	self removeAllMorphs.
	self addControlHandles.
	self addQueryHandles.
	
	self addFanInHandles.
	self addFanOutHandles.

	self redrawLater.