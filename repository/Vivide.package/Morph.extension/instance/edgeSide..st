*vivide-layout
edgeSide: aSymbol
	"
	#inside, #outside
	"
	
	self fullBounds; changed.

	self setProperty: #edgeSide toValue: aSymbol.
	self updateCellPositioningForEdge.

	self layoutChanged.
	self fullBounds; changed.