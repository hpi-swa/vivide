initialization
initialize
	
	super initialize.
	
	self textMorph
		font: UiPlatform current standardCodeFont;
		styler: ViTextStyler new;
		margins: (4@4 corner: 4@0).
	
	self connect: self textMorph signal: #focusChanged: toSelector: #onFocusChanged:.
	self connect: self textMorph signal: #repeatedReturnPressed: toSelector: #onRepeatedReturnPressed:.

	self connect: self eventHandler signal: #mouseWheelUp: toSelector: #mouseWheelUp:.
	self connect: self eventHandler signal: #mouseWheelDown: toSelector: #mouseWheelDown:.