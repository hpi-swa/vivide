accessing - kernel
view: newView

	self disconnectModelAndView.
	
	view ifNotNil: [:v | v clear; delete].
	view := newView.

	self connectModelAndView.

	newView ifNotNil: [:v |
		v
			hResizing: #spaceFill;
			vResizing: #spaceFill.
		self addMorphBack: v]