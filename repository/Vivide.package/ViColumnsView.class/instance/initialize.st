as yet unclassified
initialize

	super initialize.

	self transformMorph color: Color transparent.

	self widget: (Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap;
		vResizing: #rigid;
		cellInset: 2;
		yourself).

	self widgetResizable: true.
	self horizontalScrollBarPolicy: #asNeeded.
	self verticalScrollBarPolicy: #alwaysOff.