memento - cleanup
clear

	self providersForSelections
		select: [:pane | pane notNil]
		thenDo: [:pane | self stopListeningForSelectionsFrom: pane].
	self providersForResults
		select: [:pane | pane notNil]
		thenDo: [:pane | self stopListeningForResultsFrom: pane].
	self listenersForSelections
		collect: [:msg | msg receiver]
		thenDo: [:pane | pane ifNotNil: [
			pane stopListeningForSelectionsFrom: self]].
	self listenersForResults
		collect: [:msg | msg receiver]
		thenDo: [:pane | pane ifNotNil: [
			pane stopListeningForResultsFrom: self]].
	
	ViObjectChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	ViQueryChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	self currentQuery: nil.
	
	self flag: #todo. "mt: Clear artifact list containers! Or any other editing state in views...?"