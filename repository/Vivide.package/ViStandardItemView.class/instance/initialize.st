initialization
initialize

	super initialize.
	self
		color: Color white;
		changeTableLayout;
		cellInset: 2;
		listDirection: #topToBottom.
	
	self initializeFinder.
	self initializePreviewHandler.