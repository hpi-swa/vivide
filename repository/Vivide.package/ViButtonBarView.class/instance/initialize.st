initialization
initialize

	super initialize.
	self
		color: Color transparent;
		layoutPolicy: (ViWrappingLayout new
			cellInset: 5).