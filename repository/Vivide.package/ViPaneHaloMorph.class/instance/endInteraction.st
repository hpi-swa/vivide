events
endInteraction

	positionOffset := nil.

	outputConnections valuesDo: [:spec | spec first borderColor: self fanOutColor]. 

	self comeToFront.
	self bounds: self target worldBoundsForHalo.
	self redrawLater.
	self addHandles.