initialization
createAboutBox
	^ (self createBox: UiFugueIcons informationButtonIcon)
		actionSelector: #aboutRequested;
		setBalloonText: 'About' translated