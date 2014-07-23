actions
doHandleMovement: aMouseMoveEvent

	self target ifNil: [^ self].
	
	self orientation = #vertical ifTrue: [
		self target width:
			((mouseDownTargetExtent
				+ ((aMouseMoveEvent position - mouseDownEventPosition) * ((self left > self target left) ifTrue: [1] ifFalse: [-1]))) x
			max: self minSize)].
		
	self orientation = #horizontal ifTrue: [
		self target height:
			((mouseDownTargetExtent
				+ ((aMouseMoveEvent position - mouseDownEventPosition) * ((self top > self target top) ifTrue: [1] ifFalse: [-1]))) y
			max: self minSize)].