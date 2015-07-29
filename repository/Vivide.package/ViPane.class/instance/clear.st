memento - cleanup
clear

	self connections copy do: [:connection |
		connection detach].
	
	ViObjectChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	ViQueryChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	
	self view ifNotNil: #clear.
	self currentQuery: nil.
	
	self flag: #todo. "mt: Clear artifact list containers! Or any other editing state in views...?"