as yet unclassified
initializeToolbarControls

	| cycleBtn |
	cycleBtn := ViDraggableButton new
		autoRaise: true;
		color: Color yellow;
		buttonStyle: #iconOnly;
		icon: (UiDiagonaIcons icon0307Small clippedTo: 16@16) asWireframeSunken;
		balloonText: 'Change cycle';
		layoutInset: (-1@0 corner: -1@0).
		
	self connect: cycleBtn signal: #clicked: toSelector: #removeCycle.
	self toolbar addButton: cycleBtn edge: #top.
	self setProperty: #cycleBtn toValue: cycleBtn.

	cycleBtn
		"passenger: self object;"
		source: self;
		dragTransferType: #connect.

	super initializeToolbarControls.