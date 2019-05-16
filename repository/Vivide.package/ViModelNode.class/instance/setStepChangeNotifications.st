notifications
setStepChangeNotifications

	firstStep ifNil: [^ self].
	
	self depth > self class updateDepthThreshold ifTrue: [^ self].
	
	ViScriptChangeNotifier active
		notify: self
		using: #updateFromChangedStep:.