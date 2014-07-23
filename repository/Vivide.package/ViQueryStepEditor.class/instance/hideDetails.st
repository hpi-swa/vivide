actions
hideDetails

	self ui detailsBtn
		checked: false;
		icon: (self currentIcon ifNil: [UiFugueIcons selectionIcon]).
"		setIcon: UiFugueIcons pencilSmallIcon."
	
	self updateSummaryLbl.
	
	self ui summaryLbl showFull.
	self ui detailsBox hideFull.