actions
addPane: aPane

	aPane
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	
	self panes ifEmpty: [
		aPane topLeft: self innerBounds topLeft.].
	
	self addMorphFront: aPane.
	aPane layoutChanged.

	self updateHeaderText.