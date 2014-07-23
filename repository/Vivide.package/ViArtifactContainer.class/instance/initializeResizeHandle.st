initialization
initializeResizeHandle

	resizeHandle := ViResizeHandleForEdit new
		orientation: #horizontal.
		
	self connect: self signal: #artifactChanged: to: resizeHandle selector: #target:.