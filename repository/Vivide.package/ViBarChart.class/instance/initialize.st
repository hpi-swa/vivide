initialization
initialize

	super initialize.

	max := 0.

	self scroller color: Color white.

	self content
		changeTableLayout;
		cellInset: 1;
		layoutInset: 5;
		listDirection: #leftToRight;
		cellPositioning: #bottomCenter.
 
	self connect: self content signal: #extentChanged: toSelector: #updateScale:.