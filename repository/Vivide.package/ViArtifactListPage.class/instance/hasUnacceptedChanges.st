memento - data
hasUnacceptedChanges

	^ self artifactContainers anySatisfy: [:e |
		e hasUnacceptedChanges]