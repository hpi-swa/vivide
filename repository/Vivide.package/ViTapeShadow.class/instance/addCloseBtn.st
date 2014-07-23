initialization
addCloseBtn

	| closeBtn |
	closeBtn := UiToolButton new
		buttonStyle: #iconOnly;
		autoRaise: true;
		balloonText: 'Close this tape';
		color: (Color gray: 0.3);
		icon: UiFugueIcons crossSmallIcon asWireframeSunken2;
		topLeft: self topLeft + (5@5).
	self addMorph: closeBtn.
	self connect: closeBtn signal: #clicked: toSelector: #closeRequested.