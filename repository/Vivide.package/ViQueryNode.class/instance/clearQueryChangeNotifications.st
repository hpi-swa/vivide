notifications
clearQueryChangeNotifications

	firstStep ifNil: [^ self].

	self flag: #magicNumber. "mt: Make it a preference? Should improve performance, though..."
	self depth > 5 ifTrue: [^ self].
	
	ViQueryChangeNotifier uniqueInstance
		noMoreNotificationsFor: self.