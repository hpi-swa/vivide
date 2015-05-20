as yet unclassified
initializeArtifact

	| container row |
	container := Morph new
		color: Color transparent;
		layoutPolicy: (ViVerticalLayout new cellInset: 4);
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself.
		
	uiLabel := UiLabel new
		hResizing: #spaceFill;
		yourself.

	uiAnswer := Morph new
		color: Color transparent;
		layoutPolicy: ViOverlappingLayout new;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		yourself.

	uiProgress := UiProgressBar new
		color: Color blue muchLighter;
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: Preferences standardButtonFont height + 5;
		yourself.
	
	uiNext := UiPushButton new openInHand
		icon: UiFugueIcons control000SmallIcon;
		text: 'Next';
		yourself.
	self connect: uiNext signal: #clicked: toSelector: #doNextTask.

	row := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 15;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		yourself.

	row addAllMorphs: {uiProgress.uiNext}.
	container addAllMorphs: {uiLabel.uiAnswer.row}.
	self artifact: container.