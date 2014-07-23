memento - cleanup
clear

	ViObjectChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	self currentQuery: nil.