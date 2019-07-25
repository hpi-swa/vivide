accessing - kernel
view: newView

	self disconnectModelAndView.
	
	view ifNotNil: [:v | v clear; delete].
	view := newView.

	self connectModelAndView.

	newView
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	self addMorphBack: newView.