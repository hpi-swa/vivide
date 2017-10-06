initialization
initializeTitleBar

	| closeBtn closeWndBtn feedbackBtn profileLabel changeProfileBtn helpBtn |
	titleBar := Morph new
		color: Color veryVeryLightGray;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 5;
		layoutInset: (5@5 corner: 5@2); 
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	closeBtn := UiToolButton new
		buttonStyle: #iconOnly;
		color: Color veryVeryLightGray;
		icon: ViIcons crossSmallSunkenIcon.
	self connect: closeBtn signal: #clicked: toSelector: #close.
	
	closeWndBtn := UiToolButton new
		buttonStyle: #iconOnly;
		color: Color veryVeryLightGray;
		balloonText: 'Close all open Vivide windows.';
		icon: UiFugueIcons broomIcon asWireframeSunken.
	self connect: closeWndBtn signal: #clicked: toSelector: #closeAllWindows.
	
	changeProfileBtn := UiToolButton new
		buttonStyle: #iconOnly;
		color: Color veryVeryLightGray;
		balloonText: 'Switch user profile.';
		icon: UiFugueIcons userIcon asWireframeSunken.
	self connect: changeProfileBtn signal: #clicked: to: VivideLight selector: #open.

	helpBtn := UiToolButton new
		buttonStyle: #iconOnly;
		color: Color veryVeryLightGray;
		balloonText: 'Explore HowTo Videos';
		icon: ViIcons questionMarkIcon asWireframeSunken.
	self connect: helpBtn signal: #clicked: toSelector: #showHowTo.
	
	updateBtn := UiToolButton new
		"buttonStyle: #iconOnly;"
		color: Color veryVeryLightGray;
		text: 'Update';
		balloonText: 'Check for update.';
		icon: UiFugueIcons leafArrowIcon.
	self connect: updateBtn signal: #clicked: toSelector: #updateFromRepository.
	
	feedbackBtn := UiToolButton new
		"buttonStyle: #iconOnly;"
		color: Color veryVeryLightGray;
		icon: (UiFugueIcons balloonSmallIcon asWireframeSunken clippedToSize: 10@10);
		text: '<font color="#444444">Feedback</font>'.
	self connect: feedbackBtn signal: #clicked: toSelector: #sendFeedback.
	
	profileLabel := ('<font size="9" color="#444444">Profile: "', ViProfile active label, '"</font>') asHtmlText asMorph
			disableTableLayout: true;
			position: titleBar position + (10@30).
	
	titleBar addAllMorphs: {
		closeBtn.
		(ViIcons vivideLogo asWireframeSunken: 0.45) asMorph.
		UiSpacer new orientation: #horizontal.
		updateBtn.
		changeProfileBtn.
		closeWndBtn.
		helpBtn.
		profileLabel}.
	updateBtn hideFull.