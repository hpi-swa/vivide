as yet unclassified
updateLayout

	self topLeft: self world topLeft.
	self extent: self world extent.
	selectionRectangle delete.

	self fullBounds.
	self submorphBounds in: [:r |
		self layoutInset: (self width - r width // 2) @ (self height - r height // 2)].
	
	self addMorphBack: selectionRectangle.
	self fullBounds.
	self selectWindow: self selectedWindow.

	self comeToFront.
	self grabKeyboard.