memento - cleanup
clear

	ViObjectChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	ActiveHand removeKeyboardListener: self.
	
	self model: nil.
	self artifactContainers do: [:c | c clear].