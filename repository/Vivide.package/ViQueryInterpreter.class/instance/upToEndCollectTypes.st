interpreting
upToEndCollectTypes

	(step notNil and: [step hasCycle])
		ifTrue: [Error signal: 'This query is cyclic! Cannot interpret up to end.'].

	properties := OrderedCollection new.

	[step isNil] whileFalse: [
		step in: [:prevStep |
			prevStep definition ifNotNil: [:def |
				def inputKind: (self anyObject ifNil: [Object] ifNotNil: [:o | o class])].
			self next.
			prevStep definition ifNotNil: [:def |
				def outputKind: (self anyObject ifNil: [Object] ifNotNil: [:o | o class])]]].