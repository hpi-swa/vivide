memento - cleanup
clear

	self connections copy do: [:connection |
		connection detach].
	
	ViObjectChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	ViScriptChangeNotifier active noMoreNotificationsFor: self.
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	
	self clearError.
	
	self view ifNotNil: #clear.
	self script: nil.
	
	self flag: #todo. "mt: Clear artifact list containers! Or any other editing state in views...?"