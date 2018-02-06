class initialization
initialize

	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.

	(TheWorldMenu respondsTo: #registerOpenCommand:) ifTrue: [
		TheWorldMenu unregisterOpenCommand: 'Vivide'.
		TheWorldMenu registerOpenCommand: {'Vivide'. {self. #open}}].