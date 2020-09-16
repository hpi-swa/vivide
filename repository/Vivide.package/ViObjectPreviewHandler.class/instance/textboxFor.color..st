preview - building
textboxFor: aStringOrText color: aColor

	| box |
	(aStringOrText isNil or: [aStringOrText isEmpty]) ifTrue: [^ nil].
	
	box := UiTextEdit new
		extent: (300@150) scaleValueToDisplay;
		colorBackground: aColor;
		updateFocusColor: false;  
		scrollingMode: #limit;
		scrollingLimit: 10;
		scrollBarThickness: 9;
		readOnly: true;  
		theText: aStringOrText asHtmlText.
		
	box width: (box optimalWidth min: 400 scaleValueToDisplay).
	
	^ box