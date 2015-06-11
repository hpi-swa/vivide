as yet unclassified
initialize

	super initialize.
	
	currentSelectionIndex := 0.
	
	self
		color: Color transparent;
		layoutPolicy: ViOverlappingLayout new;
		initializeForSingleSelection.