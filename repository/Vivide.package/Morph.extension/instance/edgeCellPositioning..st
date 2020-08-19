*vivide-layout
edgeCellPositioning: aSymbol
	"
	#topLeft, #topRight, #bottomLeft, #bottomRight, #topCenter, #leftCenter, #rightCenter, #bottomCenter, #center 
	"
	
	self setProperty: #edgeCellPositioning toValue: aSymbol.
	self layoutChanged.