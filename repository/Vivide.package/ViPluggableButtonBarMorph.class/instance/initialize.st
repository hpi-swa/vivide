as yet unclassified
initialize

	super initialize.
	
	self
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		extent: 10@25;
		cellGap: 5.
		"layoutPolicy: (ViWrappingLayout new cellInset: 5)."
		
	buttonCount := 0.