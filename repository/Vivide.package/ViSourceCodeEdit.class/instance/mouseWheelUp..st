signals
mouseWheelUp: aMouseEvent

	self verticalScrollBarPolicy ~= #alwaysOff
		ifTrue: [^ self].

	self emitInOwnerChain.