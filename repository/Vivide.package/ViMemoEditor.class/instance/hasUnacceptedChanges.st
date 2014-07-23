memento - data
hasUnacceptedChanges

	^ self artifact theText ~= self defaultMemo
		and: [super hasUnacceptedChanges]