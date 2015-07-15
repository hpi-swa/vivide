as yet unclassified
convert: stepOrSymbol

	^ stepOrSymbol isSymbol
		"If the dynamically-scoped organization does not have it, try the on in the current profile."
		ifTrue: [((ViQueryOrganizer active stepById: stepOrSymbol)
				ifNil: [ViProfile active organization stepById: stepOrSymbol])
			ifNil: [nil]]
		ifFalse: [stepOrSymbol]