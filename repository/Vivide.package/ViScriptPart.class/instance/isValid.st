as yet unclassified
isValid

	self allStepsDo: [:step |
		step organization == self organization
			ifFalse: [^ false].
		(step isReference and: [step reference isNil])
			ifTrue: [^ false].
		(step isMeta and: [step metaReference isNil])
			ifTrue: [^ false]].
	^ true