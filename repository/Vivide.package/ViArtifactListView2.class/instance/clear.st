memento - cleanup
clear

	ViObjectChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.

	self artifactContainers do: [:c | c clear].
	
	model := nil.
	self objects: #().