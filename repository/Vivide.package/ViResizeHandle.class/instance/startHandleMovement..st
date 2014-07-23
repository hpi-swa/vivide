actions
startHandleMovement: aMouseEvent

	self target ifNil: [^ self].

	mouseDownEventPosition := aMouseEvent position.
	mouseDownTargetExtent := self target extent.
