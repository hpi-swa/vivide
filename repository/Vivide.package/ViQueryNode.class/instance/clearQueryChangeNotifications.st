notifications
clearQueryChangeNotifications

	firstStep ifNil: [^ self].

	self depth > self class updateDepthThreshold ifTrue: [^ self].
	
	ViQueryChangeNotifier active
		noMoreNotificationsFor: self.