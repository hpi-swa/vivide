as yet unclassified
addCornerGrips
	self
		addMorphBack: (TopLeftGripMorph new target: self; edgeCell: #topLeft; edgeSide: #inside).
	self
		addMorphBack: (TopRightGripMorph new target: self; edgeCell: #topRight; edgeSide: #inside).
	self
		addMorphBack: (BottomLeftGripMorph new target: self; edgeCell: #bottomLeft; edgeSide: #inside).
	self
		addMorphBack: (BottomRightGripMorph new target: self; edgeCell: #bottomRight; edgeSide: #inside)