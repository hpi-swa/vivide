initialization
initializeTitleBar

	| closeBtn closeWndBtn feedbackBtn |
	titleBar := Morph new
		color: (Color fromString: '#C6CBD6') lighter;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 5;
		layoutInset: (5@5 corner: 5@5); 
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	closeBtn := UiToolButton new
		buttonStyle: #iconOnly;
		color: (Color fromString: '#C6CBD6');
		icon: ViIcons crossSmallSunkenIcon.
	self connect: closeBtn signal: #clicked: toSelector: #close.
	
	closeWndBtn := UiToolButton new
		buttonStyle: #iconOnly;
		color: (Color fromString: '#C6CBD6');
		balloonText: 'Close all open Vivide windows.';
		icon: UiFugueIcons broomIcon asWireframeSunken.
	self connect: closeWndBtn signal: #clicked: toSelector: #closeAllWindows.
	
	feedbackBtn := UiToolButton new
		"buttonStyle: #iconOnly;"
		color: (Color fromString: '#C6CBD6');
		icon: (UiFugueIcons balloonSmallIcon asWireframeSunken clippedTo: 10@10);
		text: '<font color="#444444">Feedback</font>'.
	self connect: feedbackBtn signal: #clicked: toSelector: #sendFeedback.
	
	titleBar addAllMorphs: {
		closeBtn.
		closeWndBtn.
		(ViIcons vivideLogo asWireframeSunken: 0.3) asMorph.
		UiSpacer new orientation: #horizontal.
		feedbackBtn}.