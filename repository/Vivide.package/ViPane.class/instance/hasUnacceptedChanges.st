memento - data
hasUnacceptedChanges
	
	^ (self currentQuery notNil and: [self currentQuery isDefault not]) or: [
		(self view respondsTo: #hasUnacceptedChanges)
			and: [self view hasUnacceptedChanges]]