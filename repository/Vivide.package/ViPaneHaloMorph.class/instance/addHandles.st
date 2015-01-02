handles
addHandles

	self removeAllMorphs.
	self addQueryHandles.
	self addControlHandles.
	
	self addFanInHandles.
	self addFanOutHandles.

	self redrawLater.