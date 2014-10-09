events
endInteraction

	self comeToFront.
	self bounds: target worldBoundsForHalo.
	self redrawLater.
	self addHandles.