as yet unclassified
initializeTextEdit

	self vResizing: #spaceFill.
	self addMorph: (UiTextEdit new
		hResizing: #spaceFill;
		vResizing: #spaceFill).
	self connect: self textEdit signal: #editingFinished: toSelector: #acceptChanges.