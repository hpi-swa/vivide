read
readSteps

	| result |
	result := OrderedCollection new.
	self theClass theMetaClass selectors
		select: [:selector | ((self theClass theMetaClass compiledMethodAt: selector) pragmaAt: #step) notNil]
		thenDo: [:stepSelector | result add: (self theClass theNonMetaClass perform: stepSelector)].
	^ result