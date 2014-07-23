initialization
initializeHeader

	super initializeHeader.

	self ui objectsBtn
		passenger: [self objects];
		dragTransferType: #objects.