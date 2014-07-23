public
notify: anObject ofObjectChangesUsing: oneArgumentSelector

	self
		notify: anObject
		ofEvents: {AbstractEvent eventSelectorBlock value: self class objectKind value: ModifiedEvent changeKind}
		using: oneArgumentSelector.