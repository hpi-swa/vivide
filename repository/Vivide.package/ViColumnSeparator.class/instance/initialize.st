initialization
initialize

	super initialize.
	
	self
		color: (Color gray: 0.85);
		hResizing: #shrinkWrap;
		vResizing: #spaceFill;
		changeTableLayout;
		cellInset: 1;
		layoutInset: (1@2 corner: 0@1);
		listDirection: #topToBottom.