initialization
initialize

	super initialize.
	self
		color: Color white;
		changeTableLayout;
		cellGap: 2;
		listDirection: #topToBottom.
	
	self initializeFinder.
	self initializePreviewHandler.