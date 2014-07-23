updating
updateButtonPositions

	| offset |
	offset := -10@0.
	self fullBounds.

	outBtn comeToFront; bottomRight: self bottomRight + offset.
	inBtn comeToFront; bottomRight: outBtn bottomLeft - (10@0).

	sendersBtn comeToFront.
	outBtn visible
		ifTrue: [sendersBtn bottomRight: inBtn bottomLeft - (10@0)]
		ifFalse: [sendersBtn bottomRight: self bottomRight + offset].
	
	idBtn comeToFront.
	idBtn bottomRight: sendersBtn bottomLeft - (10@0).