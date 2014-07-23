actions
closeIfEmpty

	self flag: #tofix. "mt: Is the method's name right? No empty check here..."
	(self panes size = 1 "and: [self panes first objects isEmpty]")
		ifTrue: [
			"self haltOnce." 
			"self close"].