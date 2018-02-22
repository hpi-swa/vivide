as yet unclassified
addScriptBtn

	| scriptBtn |
	scriptBtn := UiToolButton new
		buttonStyle: #iconOnly;
		autoRaise: true;
		balloonText: 'Add workspace';
		layoutInset: 0;
		color: (Color gray: 0.3);
		icon: ViIcons icons8Console64px1Icon scaledToDisplay;
		topLeft: self topLeft + (5@5).
	self addMorph: scriptBtn.
	self connect: scriptBtn signal: #clicked: toSelector: #codeSnippetRequested.