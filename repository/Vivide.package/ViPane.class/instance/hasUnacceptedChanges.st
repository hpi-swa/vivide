memento - data
hasUnacceptedChanges
	
	^ (self view respondsTo: #hasUnacceptedChanges)
		and: [self view hasUnacceptedChanges]