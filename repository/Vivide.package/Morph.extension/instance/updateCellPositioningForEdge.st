*vivide-layout
updateCellPositioningForEdge

	| aSymbol |
	aSymbol := self edgeCell.
	
	aSymbol == #left ifTrue: [self cellPositioning: (self edgeSide == #inside ifTrue: [#leftCenter] ifFalse: [#rightCenter])].
	aSymbol == #top ifTrue: [self cellPositioning: (self edgeSide == #inside ifTrue: [#topCenter] ifFalse: [#bottomCenter])].
	aSymbol == #right ifTrue: [self cellPositioning: (self edgeSide == #inside ifTrue: [#rightCenter] ifFalse: [#leftCenter])].
	aSymbol == #bottom ifTrue: [self cellPositioning: (self edgeSide == #inside ifTrue: [#bottomCenter] ifFalse: [#topCenter])].	

	aSymbol == #topLeft ifTrue: [self cellPositioning: (self edgeSide == #inside ifTrue: [#topLeft] ifFalse: [#bottomRight])].	
	aSymbol == #topRight ifTrue: [self cellPositioning: (self edgeSide == #inside ifTrue: [#topRight] ifFalse: [#bottomLeft])].	
	aSymbol == #bottomLeft ifTrue: [self cellPositioning: (self edgeSide == #inside ifTrue: [#bottomLeft] ifFalse: [#topRight])].	
	aSymbol == #bottomRight ifTrue: [self cellPositioning: (self edgeSide == #inside ifTrue: [#bottomRight] ifFalse: [#topLeft])].