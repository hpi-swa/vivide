preview - building
codeboxFor: someCode inClass: aClass

	| box |
	(someCode isNil or: [someCode isEmpty]) ifTrue: [^ nil].
	
	box := ViSourceCodeEdit new
		readOnly: true;
		theClass: aClass;
		sourceCode: someCode;
		scrollingMode: #limit;
		scrollingLimit: 10;
		displayMode: #highlight;
		colorHighlightedBackground: Color yellow muchLighter paler;
		colorHighlightedBorder: (Color gray: 0.6);
		updateFocusColor: false.
	
	box width: (box optimalWidth min: 400 scaleValueToDisplay).
	
	^ box