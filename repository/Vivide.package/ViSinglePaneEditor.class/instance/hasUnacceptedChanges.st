memento - data
hasUnacceptedChanges

	^ super hasUnacceptedChanges
		or: [self pane ifNil: [false] ifNotNil: [:p | p hasUnacceptedChanges]]