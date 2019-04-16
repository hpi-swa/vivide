interpreting
upToEndCollectTypes

	(step notNil and: [step hasCycle])
		ifTrue: [Error signal: 'This query is cyclic! Cannot interpret up to end.'].

	self clearProperties.

	[step isNil] whileFalse: [
		step in: [:prevStep |
			prevStep definition ifNotNil: [:def |
				def inputKind: (self objects ifEmpty: [Object] ifNotEmpty: [:objs | objs anyOne class])].
			self doNext.
			prevStep definition ifNotNil: [:def |
				def outputKind: (self objects ifEmpty: [Object] ifNotEmpty: [:objs | objs anyOne class])]]].