configuration
addAction: textOrString icon: aForm receiver: anObject selectors: someSymbols

	| button |
	button := UiPushButton new
		icon: aForm scaledToDisplay;
		text: textOrString;
		hResizing: #spaceFill.
	self connect: button signal: #clicked: toSelector: #delete.
	
	someSymbols do: [:symbol |
		self connect: button signal: #clicked: to: anObject selector: symbol].
	
	self ui buttonContainer addMorphBack: button.
	self updateShortcuts.
	
	^ button  