initialization
initialize

	super initialize.
	
	self
		color: Color white;
		changeTableLayout;
		listDirection: #leftToRight;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill.
		
	summaryBtn := ViDraggableButton new
		color:  Color white;
		autoRaise: true;
		dragTransferType: #artifact;
		hResizing: #spaceFill.
	
	moveBtn := ViDraggableButton new
		color: Color white;
		autoRaise: true;
		buttonStyle: #iconOnly;
		dragTransferType: #artifact;
		icon: ViIcons icons8Move64px1Icon scaledToDisplay;
		layoutInset: (-2@0 corner: -2@0).
		
	expandBtn := UiToolButton new
		color: Color white;
		autoRaise: true;
		buttonStyle: #iconOnly;
		icon: ViIcons icons8ExpandArrow64px1Icon scaledToDisplay;
		layoutInset: (-2@0 corner: -2@0).
	
	closeBtn := UiToolButton new
		color: Color white;
		autoRaise: true;  
		buttonStyle: #iconOnly;
		icon: ViIcons icons8Delete64px1Icon scaledToDisplay;
		layoutInset: (-2@0 corner: 3@0).
		
	self addAllMorphs: {summaryBtn.moveBtn.expandBtn.closeBtn}.