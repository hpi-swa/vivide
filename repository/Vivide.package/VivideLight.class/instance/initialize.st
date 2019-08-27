initialization
initialize

	super initialize.
	
	self
		color: Color veryVeryLightGray darker;
		changeTableLayout;
		listDirection: #topToBottom;  
		cellPositioning: #topLeft;  
		cellGap: 5;
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		rubberBandCells: true;
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
	
	self addAllMorphs: {titleBar. objectsBar}.