initialization
initialize

	super initialize.
	self
		color: (Color gray: 0.85);
		layoutPolicy: ViWrappingLayout new.
		
	addBtn := UiToolButton new 
		color: (Color gray: 0.95);
		buttonStyle: #iconOnly;
		autoRaise: true;
		icon: (UiFugueIcons plusSmallIcon asWireframeSunken: 0.65).
	self connect: addBtn signal: #clicked: toSelector: #chooseSnippet.
	
	self updateForObjects: #().