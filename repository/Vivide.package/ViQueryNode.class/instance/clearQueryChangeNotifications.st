notifications
clearQueryChangeNotifications

	firstStep ifNil: [^ self].
	ViQueryChangeNotifier uniqueInstance
		noMoreNotificationsFor: self.