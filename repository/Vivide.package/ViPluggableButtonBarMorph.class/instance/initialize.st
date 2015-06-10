as yet unclassified
initialize

	super initialize.
	
	self
		color: Color transparent;
		layoutPolicy: (ViWrappingLayout new cellInset: 5).
		
	buttonCount := 0.