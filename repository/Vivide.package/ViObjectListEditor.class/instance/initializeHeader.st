initialization
initializeHeader

	super initializeHeader.

	self ui headerBtn text: 'Unnamed'.	
	"self ui objectsBtn
		passenger: [self objects];
		dragTransferType: #objects."
		
	self ui hideBtn balloonText: 'Toggle editor visibility.
	
	(SHIFT+Click toggles artifacts visibility.)'