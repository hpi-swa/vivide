popup
popUpFor: aMorph
	
	self bounds: aMorph visibleBounds.

	self class hideAllToolbars.
	
	self openInWorld.