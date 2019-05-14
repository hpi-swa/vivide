as yet unclassified
unsubscribeFromNotifiers

	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	ViScriptChangeNotifier active noMoreNotificationsFor: self.
	ActiveHand removeKeyboardListener: self.
	ViObjectChangeNotifier uniqueInstance noMoreNotificationsFor: self.