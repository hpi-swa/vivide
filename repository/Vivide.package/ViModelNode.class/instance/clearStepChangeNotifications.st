notifications
clearStepChangeNotifications

	firstStep ifNil: [^ self].

	self depth > self class updateDepthThreshold ifTrue: [^ self].
	
	ViScriptChangeNotifier active noMoreNotificationsFor: self.