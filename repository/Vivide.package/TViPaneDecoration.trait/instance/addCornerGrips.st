resize grips
addCornerGrips
	self
		addMorphFront: (TopLeftGripMorph new target: self pane; edgeCell: #topLeft; edgeSide: #inside).
	self
		addMorphFront: (TopRightGripMorph new target: self pane; edgeCell: #topRight; edgeSide: #inside).
	self
		addMorphFront: (BottomLeftGripMorph new target: self pane; edgeCell: #bottomLeft; edgeSide: #inside).
	self
		addMorphFront: (BottomRightGripMorph new target: self pane; edgeCell: #bottomRight; edgeSide: #inside)