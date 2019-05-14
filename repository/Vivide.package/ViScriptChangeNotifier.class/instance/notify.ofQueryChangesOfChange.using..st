public
notify: anObject ofQueryChangesOfChange: changeKind using: oneArgumentSelector 
	"Notifies an object of query changes of the specified changeKind (#added, #removed, ...). Evaluate 'AbstractEvent allChangeKinds' to get the complete list."

	self 
		notify: anObject
		ofEvents: (self queryEventsForChange: changeKind)
		using: oneArgumentSelector