as yet unclassified
initializeResizeHandle

	resizeHandle := ViResizeHandle new
		orientation: #horizontal.
		
	self connect: self signal: #artifactChanged: to: resizeHandle selector: #target:.