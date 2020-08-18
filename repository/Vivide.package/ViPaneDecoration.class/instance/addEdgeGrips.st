as yet unclassified
addEdgeGrips
	"Add resizers along the four edges of the receiver"

	self
		addMorphBack: (TopGripMorph new target: self; edgeCell: #top; edgeSide: #inside; hResizing: #spaceFill; height: AbstractResizerMorph gripThickness + (self outerBorderWidth * 2)).
	self
		addMorphBack: (BottomGripMorph new target: self; edgeCell: #bottom; edgeSide: #inside; hResizing: #spaceFill; height: AbstractResizerMorph gripThickness + (self outerBorderWidth * 2)).
	self
		addMorphBack: (RightGripMorph new target: self; edgeCell: #right; edgeSide: #inside; vResizing: #spaceFill; width: AbstractResizerMorph gripThickness + (self outerBorderWidth * 2)).
	self
		addMorphBack: (LeftGripMorph new target: self; edgeCell: #left; edgeSide: #inside; vResizing: #spaceFill; width: AbstractResizerMorph gripThickness + (self outerBorderWidth * 2)).