as yet unclassified
initialize

	super initialize.

	self content
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.