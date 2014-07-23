memento - data
hasUnacceptedChanges

	^ ((((super hasUnacceptedChanges
		or: [subscribeEdit hasUnacceptedChanges])
		or: [unsubscribeEdit hasUnacceptedChanges])
		or: [self currentUpdateSetDefinition ~= self definition updateSetDefinition
			and: [self currentUpdateSetDefinition isRegistered "consider defaults"]])
		or: [self currentUpdateClearDefinition ~= self definition updateClearDefinition
			and: [self currentUpdateClearDefinition isRegistered "consider defaults"]])