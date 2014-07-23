accessing
pcRange

	self object isDead
		ifTrue: [^ 1 to: 0].
		
	self flag: #activeContext. "mt: How to retrieve whether this stack frame is on top?!"
	^ self object debuggerMap
		rangeForPC: self object pc
		contextIsActiveContext: (self context indexOf: self object) = 1