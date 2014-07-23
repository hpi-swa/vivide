actions add/remove
addIcon: aForm text: aLabel receiver: anObject selector: aSymbol

	| button |
	button := UiToolButton new
		color: (Color gray: 0.85);
		icon: aForm;
		text: aLabel;
		layoutInset: (2@3 corner: 2@3).
	self connect: button signal: #clicked: to: anObject selector: aSymbol.
	
	self contentContainer addMorphBack: button.  
	^ button