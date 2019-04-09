memento - cleanup
tryClose

	self thisStep isDefault
		ifTrue: [self tryDeleteScript]
		ifFalse: [self deleteScript].