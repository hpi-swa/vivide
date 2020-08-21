initialization
initializeScriptShortcuts

	| closeBtn objectsBtn objectsScript toolsBtn toolsScript |
	closeBtn := UiToolButton new
		buttonStyle: #iconOnly;
		color: Color veryVeryLightGray;
		balloonText: 'Close Vivide';
		icon: ViIcons icons8Delete64px1Icon scaledToDisplay.
	self connect: closeBtn signal: #clicked: toSelector: #close.
	
	objectsScript := #objectTemplates asScript.
	objectsBtn := UiToolButton new
		color: Color veryVeryLightGray;
		balloonText: (objectsScript valueOfProperty: #balloonText);
		icon: (objectsScript icon ifNil: [ViIcons icons8CollapseArrow64px1Icon]) scaledToDisplay;
		text: objectsScript nextLabel.
	self connect: objectsBtn signal: #clicked: to: objectsScript selector: #openScript.

	toolsScript := #tools asScript.
	toolsBtn := UiToolButton new
		color: Color veryVeryLightGray;
		balloonText: (toolsScript valueOfProperty: #balloonText);
		icon: (toolsScript icon ifNil: [ViIcons icons8CollapseArrow64px1Icon]) scaledToDisplay;
		text: toolsScript nextLabel.
	self connect: toolsBtn signal: #clicked: to: toolsScript selector: #openScript.

	self addAllMorphs: {closeBtn. Morph new extent: 10@10; color: Color transparent}.
	self initializeLocator.
	self addAllMorphs: {Morph new extent: 10@10; color: Color transparent. objectsBtn. toolsBtn}.