initialization
initialize

	super initialize.

	self
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellInset: 2.

	self
		initializeScroller;
		initializeEventHandler;
		initializeToolbar.

	self zoomFit.