initialization
initialize

	super initialize.
	
	self
		color: self defaultBackgroundColor darker;
		changeTableLayout;
		listDirection: #topToBottom;  
		cellPositioning: #topLeft;  
		cellInset: 20;
		vResizing: #spaceFill;
		hResizing: #rigid; width: 200;
		setToAdhereToEdge: #left;
		beSticky.
	
	ViActiveVivide
		value: self
		during: [
			"Code may have to access this instance..."
			self
				initializeTitleBar;
				initializeObjectsBar;
				initializeLocator].
	
	self addAllMorphs: {titleBar.objectsBar}.