as yet unclassified
initialize

	| scrollPane content |
	super initialize.
	self changeTableLayout.
	self color: Color white.
	
	scrollPane := UiScrollArea new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		horizontalScrollBarPolicy: #alwaysOff;
		verticalScrollBarPolicy: #asNeeded;
		widgetResizable: true.

	content := Morph new
		color: Color transparent;
		changeTableLayout;
		vResizing: #shrinkWrap;
		yourself.

	scrollPane widget: content.

	self addMorph: scrollPane.