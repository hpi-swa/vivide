updating
updateAlpha: aPoint
	
	| innerBounds edgePoint delta |
	innerBounds := self bounds insetBy: self layoutInset.
	
	(innerBounds containsPoint: aPoint)
		ifTrue: [^ self alpha: 1.0].
	
	edgePoint := innerBounds pointNearestTo: aPoint.
	delta := (aPoint - edgePoint) abs.
	
	self alpha: (self layoutInset - {delta x.delta y} max) / self layoutInset.