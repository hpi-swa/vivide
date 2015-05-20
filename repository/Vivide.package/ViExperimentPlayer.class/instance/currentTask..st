accessing
currentTask: anObject

	self currentTask ifNotNil: [:task |
		task runner disconnectSignal: #taskCompleted from: self selector: #completeTask].

	currentTask := anObject.
	
	self currentTask ifNotNil: [:task |
		self connect: task runner signal: #taskCompleted toSelector: #completeTask].
	
	self updateUi.