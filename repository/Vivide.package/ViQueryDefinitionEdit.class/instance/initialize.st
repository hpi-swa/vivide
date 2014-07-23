initialization
initialize

	super initialize.
	
	self
		clipSubmorphs: true;
		scrollingMode: #never;
		margins: (2@0 corner: 0@15).
	
	idBtn := self createButton.
	inBtn := self createButton.
	outBtn := self createButton.
	sendersBtn := self createButton.
	
	self connect: self signal: #extentChanged: toSelector: #updateButtonPositions.
	
	self addAllMorphs: {idBtn.sendersBtn.inBtn.outBtn}.
	self updateButtonPositions.
	
	self enableChooseDefinition.
	
	self connect: sendersBtn signal: #clicked: toSelector: #browseReferences.