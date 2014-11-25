as yet unclassified
addPane: aPane
	
	self panes ifEmpty: [
		aPane topLeft: self innerBounds topLeft.].
	
	self addMorphFront: aPane.
	aPane layoutChanged.