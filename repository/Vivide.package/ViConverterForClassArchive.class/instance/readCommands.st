read
readCommands

	| result |
	result := OrderedCollection new.
	self theClass theMetaClass selectors
		select: [:selector | ((self theClass theMetaClass compiledMethodAt: selector) pragmaAt: #command) notNil]
		thenDo: [:commandSelector | result add: (self theClass theNonMetaClass perform: commandSelector)].
	^ result