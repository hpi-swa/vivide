initialization
initialize

	super initialize.
	
	self
		color: (Color gray: 0.85);
		beSticky. "for fullscreen mode"
	
	self
		initializeObjectsBar;
		initializeTapesBar;
		initializeEvents;
		initializeTapeContainer; addTape;
		initializeFixedTapes.
	 	
	self initializeLayout.

	leftFixedTape hideFull.
	rightFixedTape hideFull.