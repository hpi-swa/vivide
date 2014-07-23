memento - data
hasUnacceptedChanges

	^ super hasUnacceptedChanges
		or: [self pages anySatisfy: [:page |
			page hasUnacceptedChanges]]