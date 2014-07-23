initialization
initialize

	super initialize.
	self
		changeTableLayout;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		layoutInset: 4;
		sticky: true.