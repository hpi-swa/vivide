building
createMethodPreviewFor: aMethodReference
	
	| preview |
	self flag: #obsolete.
	preview := ViSourceCodeEdit new
		readOnly: true;
		theClass: aMethodReference actualClass;

		sourceCode: aMethodReference compiledMethod getSource;
		scrollingMode: #limit;
		scrollingLimit: 10;
		displayMode: #highlight;
		colorHighlightedBackground: Color yellow muchLighter paler;
		colorHighlightedBorder: (Color gray: 0.6);
		updateFocusColor: false.
	
	preview verticalScrollBar buttonMode: #none.
	
	preview width: preview optimalWidth.
		
	^ preview