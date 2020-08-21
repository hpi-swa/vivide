accessing - kernel
view: newView

	| oldView |
	self disconnectModelAndView.
	
	oldView := view.
	view ifNotNil: [:v | v clear].
	view := newView.

	self connectModelAndView.

	newView ifNotNil: [:v |
		v
			hResizing: #spaceFill;
			vResizing: #spaceFill.
		oldView
			ifNil: [self addMorphFront: v]
			ifNotNil: [self addMorph: v behind: oldView]].
	
	oldView ifNotNil: #delete.