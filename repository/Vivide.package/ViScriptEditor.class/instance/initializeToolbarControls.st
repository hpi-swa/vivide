as yet unclassified
initializeToolbarControls

	| cycleBtn |
	cycleBtn := ViDraggableButton new
		autoRaise: true;
		color: Color yellow;
		buttonStyle: #iconOnly;
		icon: (UiDiagonaIcons icon0315Small clippedToSize: 16@16) "asWireframeSunken";
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
		icon: (UiDiagonaIcons icon0324Small clippedToSize: 16@16);
		balloonText: 'Change order of script parts'.
	(self valueOfProperty: #closeBtn)
		icon: (UiDiagonaIcons icon0301Small clippedToSize: 16@16);
		balloonText: 'Delete this part from script!'. 
	(self valueOfProperty: #collapseBtn)
		delete.
		
	self toolbar
		addSpacerToEdge: #top;
		addButton: (self valueOfProperty: #closeBtn) edge: #top.    