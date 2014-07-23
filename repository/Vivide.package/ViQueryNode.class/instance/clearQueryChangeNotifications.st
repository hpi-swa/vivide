as yet unclassified
clearQueryChangeNotifications

	firstStep ifNil: [^ self].
	ViQueryChangeNotifier uniqueInstance
		noMoreNotificationsFor: self.