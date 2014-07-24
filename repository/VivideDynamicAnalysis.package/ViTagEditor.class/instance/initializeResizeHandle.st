initialization
initializeResizeHandle

	super initializeResizeHandle.
		
	self disconnectSignal: #artifactChanged: from: self selector: #target:.