configuration
addAction: textOrString icon: aForm

	| button |
	button := UiPushButton new
		icon: aForm scaledToDisplay;
		text: textOrString;
		hResizing: #spaceFill.
	self connect: button signal: #clicked: toSelector: #delete.
	
	self ui buttonContainer addMorphBack: button.
	self updateShortcuts.
	
	^ button  