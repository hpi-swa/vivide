initialization
initialize
		
	super initialize.
	
	self connect: self signal: #artifactChanged: toSelector: #updateSubmorphs.
	
	self
		initializeEventHandler;
		initializeToolbar;
		initializeResizeHandle;
		initializeSummaryContainer;
		initializeArtifact.
	
	self
		width: self defaultWidth;
		color: Color white;
		clipSubmorphs: true;
		layoutPolicy: ViArtifactContainerLayout new.
		
	self sgConnectSignal: #newArtifactRequested toSelector: #addArtifact.