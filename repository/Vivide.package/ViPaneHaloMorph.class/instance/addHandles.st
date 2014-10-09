handles
addHandles

	self removeAllMorphs.
	self addControlHandles.
	self addQueryHandles.
	
	self addFanInHandles.
	self addFanOutHandles.

	self redrawLater.