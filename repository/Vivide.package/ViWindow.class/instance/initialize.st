initialization
initialize

	super initialize.
	
	self hResizing: #spaceFill.
	self vResizing: #spaceFill.
	
	self changeHaloLayout.

	self layoutOutset: self gripThickness. 
	self outerBorderWidth: 1.

	self setWindowColor: Color veryVeryLightGray.
	
	self addEdgeGrips.
	self addCornerGrips.

	self initializeLabelArea.

	self addDropShadow.
	self hasDropShadow: false.