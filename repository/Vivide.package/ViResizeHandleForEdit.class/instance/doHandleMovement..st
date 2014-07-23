actions
doHandleMovement: aMouseMoveEvent

	self target ifNil: [^ self].
	
	self orientation = #vertical ifTrue: [Error signal: 'Undefined.'].
		
	self orientation = #horizontal ifTrue: [
		| delta targetLineCount |
		delta := ((mouseDownTargetExtent
				+ ((aMouseMoveEvent position - mouseDownEventPosition) * ((self top > self target top) ifTrue: [1] ifFalse: [-1]))) y
			max: self minSize).
		
		self flag: #informationHiding. "mt: I cannot assume that the target is a UiTextEdit."
		targetLineCount := delta // self target textMorph lineHeight.
		self target scrollingLimit: targetLineCount.  
			].