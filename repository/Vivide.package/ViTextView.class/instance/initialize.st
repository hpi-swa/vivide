initialization
initialize

	super initialize.
	self
		color: Color transparent;
		changeTableLayout.
		
	textEdit := UiTextEdit new
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self addMorph: textEdit.
	
	self connect: textEdit signal: #editingFinished: toSelector: #acceptChanges:.