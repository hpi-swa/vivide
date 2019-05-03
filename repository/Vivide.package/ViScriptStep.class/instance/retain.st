history
retain

	(VivideLight historyFor: #scripts)
		addObject: self.
	
	(VivideLight historyFor: #transcript)
		addObject: self sourceCode.