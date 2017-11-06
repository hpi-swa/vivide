initialization
initializeForContainerClass: class

	container := class new
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		lockSize;
		yourself.
	
	container artifact vResizing: #spaceFill.
	
	"No controls in this view."
	container toolbar topPanel removeAllMorphs.
		
	self removeAllMorphs.
	self addMorph: container.