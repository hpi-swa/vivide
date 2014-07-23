building
createClassPreviewFor: aClass

	| classComment preview |
	self flag: #obsolete.
	classComment := aClass theNonMetaClass organization classComment.
	classComment ifEmpty: [^ nil].
	
	preview := UiTextEdit new
		extent: 300@150;
		colorBackground: Color yellow muchLighter paler;
		updateFocusColor: false;  
		scrollingMode: #limit;
		scrollingLimit: 10;
		scrollBarThickness: 9;
		readOnly: true;  
		theText: classComment.
		
	^ preview