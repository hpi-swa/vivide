finder
cancelCurrentSearch

	(self finder isRunning or: [self finder hasFinished])
		ifFalse: [^ self].
		
	self finder reset.
	
	self searchModel endDeferAdd.
	self showInformation: 'Search cancelled.'  