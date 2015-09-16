panes add/remove
addPane: aPane
	
	self panes ifEmpty: [
		aPane topLeft: self innerBounds topLeft.].
	
	self addMorphFront: aPane.
	aPane
		updateColor;
		layoutChanged.