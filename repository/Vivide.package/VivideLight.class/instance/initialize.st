initialization
initialize

	super initialize.
	
	self
		color: (Color fromString: '#C6CBD6');
		changeTableLayout;
		listDirection: #topToBottom;  
		cellPositioning: #topLeft;  
		cellInset: 10;
		vResizing: #spaceFill;
		hResizing: #rigid; width: 200;
		setToAdhereToEdge: #left;
		beSticky.
	
	self
		initializeTitleBar;
		initializeObjectsBar;
		initializeLocator.
	
	self addAllMorphs: {titleBar.objectsBar}.