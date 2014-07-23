initialization
initialize

	super initialize.
	self
		initializeEventHandler;
		initializeView;
		initializeModel.
	
	self
		color: (Color gray: 0.85);
		changeTableLayout;
		layoutInset: 2;
		addMorph: view.