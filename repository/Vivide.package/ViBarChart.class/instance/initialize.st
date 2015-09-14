initialization
initialize

	super initialize.

	max := 0.

	self content
		changeTableLayout;
		cellInset: 1;
		listDirection: #leftToRight;
		cellPositioning: #bottomCenter.
 
	self connect: self content signal: #extentChanged: toSelector: #updateScale:.