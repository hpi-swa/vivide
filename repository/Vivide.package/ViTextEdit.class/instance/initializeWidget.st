as yet unclassified
initializeWidget

	self hResizing: #spaceFill; vResizing: #spaceFill.
	self addMorph: (UiTextEdit new
		hResizing: #spaceFill;
		vResizing: #spaceFill).
	self connect: self textEdit signal: #editingFinished: toSelector: #acceptChanges.