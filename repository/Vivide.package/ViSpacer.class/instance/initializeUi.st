initialization
initializeUi

	| closeBtn |
	closeBtn := UiToolButton new
		buttonStyle: #iconOnly;
		autoRaise: true;
		balloonText: 'Close Spacer';
		color: (Color gray: 0.5);
		icon: UiFugueIcons crossSmallIcon asWireframeSunken2.
	self connect: closeBtn signal: #clicked: toSelector: #delete.
	
	self
		color: (Color gray: 0.6);
		changeTableLayout;
		listDirection: #leftToRight;
		listCentering: #bottomRight;
		layoutInset: (0@4 corner: 0@0);
		vResizing: #spaceFill.
		
	self addMorph: closeBtn.