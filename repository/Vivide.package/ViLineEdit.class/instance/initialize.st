initialization
initialize

	super initialize.

	self vResizing: #shrinkWrap.
	self addMorph: (UiLineEdit new
		hResizing: #spaceFill).
	self connect: self lineEdit signal: #editingFinished: toSelector: #acceptChanges.