as yet unclassified
initialize

	super initialize.
	
	self
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		layoutInset: 2;
		cellInset: 10;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.

	self initializeNode.
	self initializeChildren.