initialization
initialize

	super initialize.
	self
		color: (Color gray: 0.85);
		layoutPolicy: (ViWrappingLayout new
			cellInset: 5).