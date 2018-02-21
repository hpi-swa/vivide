initialization
initializeToolbarControls

	| cycleBtn |
	cycleBtn := ViDraggableButton new
		autoRaise: true;
		color: Color yellow;
		buttonStyle: #iconOnly;
		icon: ViIcons icons8PriceTag64px1Icon scaledToDisplay;
		balloonText: 'Insert reference to other script part';
		layoutInset: (-1@0 corner: -1@0).
		
	self toolbar addButton: cycleBtn edge: #top.
	self setProperty: #cycleBtn toValue: cycleBtn.

	cycleBtn
		"passenger: self object;"
		source: self;
		dragTransferType: #connect.

	super initializeToolbarControls.

	(self valueOfProperty: #moveBtn)
		icon: ViIcons icons8MoveGrabber64pxIcon scaledToDisplay;
		balloonText: 'Change order of script parts'.
	(self valueOfProperty: #closeBtn)
		icon: ViIcons icons8Trash64px2Icon scaledToDisplay;
		balloonText: 'Delete this part from script!'. 
	(self valueOfProperty: #collapseBtn)
		delete.
		
	self toolbar
		addSpacerToEdge: #top;
		addButton: (self valueOfProperty: #closeBtn) edge: #top.    