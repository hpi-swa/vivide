initialization
addDragBtn: aTape

	| dragBtn |
	dragBtn := ViDraggableButton new
		buttonStyle: #iconOnly;
		autoRaise: true;
		balloonText: 'Drag tape contents';
		color: (Color gray: 0.5);
		icon: UiFugueIcons controlRecordSmallIcon asWireframeSunken2;
		topLeft: self topLeft + (5@30);
		dragTransferType: #tape;
		target: aTape.
	self addMorph: dragBtn.