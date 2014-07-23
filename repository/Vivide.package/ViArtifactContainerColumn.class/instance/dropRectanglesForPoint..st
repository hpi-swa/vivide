dropping/grabbing
dropRectanglesForPoint: aTarget

	^ aTarget == #between
		ifTrue: [(super dropRectanglesForPoint: aTarget) allButLast "drop shadow"]
		ifFalse: [super dropRectanglesForPoint: aTarget]