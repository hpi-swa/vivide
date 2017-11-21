actions
chooseMostAppropriateQuery

	| defaultQueryCheck |
	self flag: #magicNumber. "mt: Make it programmable and not fixed to an ID."
	self recentQueries
		ifEmpty: [^ self]
		ifNotEmpty: [:queries |
			queries first id == #artifacts
				ifFalse: [^ self]].
	
	VivideLight useClassicMode
		ifTrue: [^ self].

	(self objects size = 1 and: [self objects anySatisfy: [:obj | obj hasVivideTools]])
		ifTrue: [self currentQuery: self mostAppropriateQuery].