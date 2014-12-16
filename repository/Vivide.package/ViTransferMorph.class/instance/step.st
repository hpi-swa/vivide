as yet unclassified
step

	super step.
	
	helpBox ifNotNil: [
		(helpBox bounds containsPoint: ActiveHand position)
			ifTrue: [
				helpBoxPositions addLast: helpBoxPositions first; removeFirst.
				helpBox topLeft: helpBoxPositions first]]