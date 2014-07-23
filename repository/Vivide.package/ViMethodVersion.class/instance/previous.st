initializing
previous
	^(prior notNil and: [prior > 0]) ifTrue: [self class fromSources: sources andPointer: prior]