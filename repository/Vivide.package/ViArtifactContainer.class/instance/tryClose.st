memento - cleanup
tryClose
	"Weakened form of #close that considers unaccepted changes."
	
	self tryClear ifTrue: [
		self
			unsubscribeFromNotifiers;
			aboutToClose;
			delete;
			closed].