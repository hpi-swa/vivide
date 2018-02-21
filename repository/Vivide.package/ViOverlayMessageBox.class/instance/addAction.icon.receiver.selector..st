configuration
addAction: textOrString icon: aForm receiver: anObject selector: aSymbol

	| button |
	button := UiPushButton new
		icon: aForm scaledToDisplay;
		text: textOrString;
		hResizing: #spaceFill.
	self connect: button signal: #clicked: toSelector: #delete.
	self connect: button signal: #clicked: to: anObject selector: aSymbol.
	
	self ui buttonContainer addMorphBack: button.
	self updateShortcuts.
		
	^ button  