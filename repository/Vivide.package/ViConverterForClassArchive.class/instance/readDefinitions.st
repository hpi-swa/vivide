read
readDefinitions

	| result |
	result := OrderedCollection new.
	self theClass theMetaClass selectors
		select: [:selector | ((self theClass theMetaClass compiledMethodAt: selector) pragmaAt: #definition) notNil]
		thenDo: [:definitionSelector | result add: (self theClass theNonMetaClass perform: definitionSelector)].
	^ result