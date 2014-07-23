initialization
initializeLayout

	| centralContainer tapeRow |
	self
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: -1.  
	 
	tapeRow := Morph new
		name: #tapeRow;
		color: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #spaceFill.  

	centralContainer := Morph new
		name: #centralContainer;
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		hResizing: #spaceFill;
		vResizing: #spaceFill.
		
	tapeRow addAllMorphs: {leftFixedTape.tapeContainer.rightFixedTape}.
	centralContainer addAllMorphs: {tapeRow.tapesBar}.
	self addAllMorphs: {objectsBar.centralContainer}.