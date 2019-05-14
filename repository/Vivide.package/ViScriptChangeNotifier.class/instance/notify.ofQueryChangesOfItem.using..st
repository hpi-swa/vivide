public
notify: anObject ofQueryChangesOfItem: itemKind  using: oneArgumentSelector 
	"Notifies an object of query changes of the specified itemKind (#class, #method, #protocol, ...). Evaluate 'AbstractEvent allItemKinds' to get the complete list."

	self 
		notify: anObject
		ofEvents: (self queryEventsForItem: itemKind)
		using: oneArgumentSelector