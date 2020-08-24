initialization
initialize

	super initialize.
	
	self
		color: Color veryVeryLightGray darker;
		changeTableLayout;
		listDirection: #leftToRight;  
		cellPositioning: #center;  
		cellGap: 5;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		rubberBandCells: true;
		setToAdhereToEdge: #bottom;
		addDropShadow;
		beSticky.
	
	ViActiveVivide
		value: self
		during: [
			"Code may have to access this instance..."
			self
				initializeScriptShortcuts;
				initializeObjectsBar;
				initializeTitleBar].