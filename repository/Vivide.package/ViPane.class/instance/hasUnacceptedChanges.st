memento - data
hasUnacceptedChanges
	
	^ (self script notNil and: [self script isDefault not]) or: [
		(self view respondsTo: #hasUnacceptedChanges)
			and: [self view hasUnacceptedChanges]]