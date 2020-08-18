*vivide-layout
edgeCell: aSymbol
	"
	#left, #top, #right, #bottom
	#topLeft, #topRight, #bottomLeft, #bottomRight
	"

	self fullBounds; changed.

	self setProperty: #edgeCell toValue: aSymbol.
	self updateCellPositioningForEdge.
	
	self layoutChanged.
	self fullBounds; changed.