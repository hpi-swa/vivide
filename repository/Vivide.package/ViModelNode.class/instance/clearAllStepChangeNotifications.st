notifications
clearAllStepChangeNotifications

	children ifNil: [^ self].
	self depth > self class updateDepthThreshold ifTrue: [^ self].
	
	children valuesDo: [:nodes | nodes do: [:node |
		node
			clearStepChangeNotifications;
			clearAllStepChangeNotifications]].