actions
showDetails

	self ui detailsBtn
		checked: true;
		icon: UiFugueIcons pencilSmallIcon;
		setIcon: nil.

	self ui summaryLbl hideFull.
	self ui detailsBox showFull.