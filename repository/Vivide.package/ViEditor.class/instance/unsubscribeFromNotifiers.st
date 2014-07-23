as yet unclassified
unsubscribeFromNotifiers

	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	ViQueryChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	ActiveHand removeKeyboardListener: self.
	ViObjectChangeNotifier uniqueInstance noMoreNotificationsFor: self.