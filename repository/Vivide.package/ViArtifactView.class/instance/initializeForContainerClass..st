as yet unclassified
initializeForContainerClass: class

	| container |
	container := class new
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		lockSize;
		yourself.
	
	container artifact 
		changeTableLayout;
		vResizing: #spaceFill.
	
	"No controls in this view."
	container toolbar topPanel removeAllMorphs.
		
	self removeAllMorphs.
	self addMorph: container.