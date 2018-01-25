initialization
initializeForContainerClass: class

	container := class new
		changeTableLayout;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		lockSize;
		yourself.
	
	"Never need a resize handle because the view/pane will take care of it."
	container resizeHandle ifNotNil: [:handle |
		handle delete.
		handle fadeInInstantly.
		container resizeHandle: nil].
	container artifact vResizing: #spaceFill.
	
	"No controls in this view."
	container toolbar topPanel removeAllMorphs.
		
	self removeAllMorphs.
	self addMorph: container.