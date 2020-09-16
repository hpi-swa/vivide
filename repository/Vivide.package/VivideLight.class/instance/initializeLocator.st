initialization
initializeLocator

	self addMorphBack: (locator := (ViLocator new
		helpText: 'Search... (CMD+K)';
		hResizing: #rigid;
		vResizing: #spaceFill;
		width: 250 scaleValueToDisplay;
		outerBorderWidth: 0; 
		vivide: self)).