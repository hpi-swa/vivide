events
endInteraction

	positionOffset := nil.

	self comeToFront.
	self bounds: self target worldBoundsForHalo.
	self redrawLater.
	self addHandles.