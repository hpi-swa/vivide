initialization
initialize

	super initialize.
	
	self initializeEventHandler.
	
	self
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;  
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.