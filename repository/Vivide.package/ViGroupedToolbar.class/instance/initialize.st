initialization
initialize

	super initialize.
	
	self
		initializePrimaryList;
		initializeSecondaryList;
		initializePreviewHandler.
	
	self
		color: (Color gray: 0.3);
		layoutInset: (4@4 corner: 5@5);
		cellGap: 6;
		cellPositioning: #topLeft;  
		addMorph: primaryList;
		orientation: #leftToRight.