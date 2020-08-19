resize grips
addEdgeGrips
	"Add resizers along the four edges of the receiver"

	self
		addMorphBack: (TopGripMorph new target: self pane; edgeCell: #top; edgeSide: #inside; hResizing: #spaceFill; height: AbstractResizerMorph gripThickness + (self outerBorderWidth * 2)).
	self
		addMorphBack: (BottomGripMorph new target: self pane; edgeCell: #bottom; edgeSide: #inside; hResizing: #spaceFill; height: AbstractResizerMorph gripThickness + (self outerBorderWidth * 2)).
	self
		addMorphBack: (RightGripMorph new target: self pane; edgeCell: #right; edgeSide: #inside; vResizing: #spaceFill; width: AbstractResizerMorph gripThickness + (self outerBorderWidth * 2)).
	self
		addMorphBack: (LeftGripMorph new target: self pane; edgeCell: #left; edgeSide: #inside; vResizing: #spaceFill; width: AbstractResizerMorph gripThickness + (self outerBorderWidth * 2)).