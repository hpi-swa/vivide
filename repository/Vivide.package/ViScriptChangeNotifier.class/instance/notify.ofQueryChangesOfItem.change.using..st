public
notify: anObject ofQueryChangesOfItem: itemKind change: changeKind using: oneArgumentSelector 
	"Notifies an object of query changes of the specified itemKind (#class, #category, ...) and changeKind (#added, #removed, ...). This is the finest granularity possible.
	Evaluate 'AbstractEvent allChangeKinds' to get the complete list of change kinds, and 'AbstractEvent allItemKinds to get all the possible item kinds supported."

	self 
		notify: anObject
		ofEvents: (Bag with: (self queryEventsForItem: itemKind change: changeKind))
		using: oneArgumentSelector