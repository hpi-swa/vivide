actions
finishHandleMovement: aMouseEvent

	mouseDownEventPosition := nil.
	mouseDownTargetExtent := nil.
	
	(self bounds containsPoint: aMouseEvent position)
		ifFalse: [self fadeOut].