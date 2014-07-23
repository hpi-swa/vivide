initialization
initialize

	super initialize.
	self
		color: Color transparent;
		changeTableLayout;
		cellInset: 2;
		listDirection: #topToBottom.
	
	self initializeFinder.
	self initializePreviewHandler.