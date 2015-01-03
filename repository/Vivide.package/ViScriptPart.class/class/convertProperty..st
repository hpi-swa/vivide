support
convertProperty: property
	"Converte read/write blocks."

	^ (property isVariableBinding and: [property value isVariableBinding])
		ifFalse: [property]
		ifTrue: [ | propertyName valueOrReadBlock writeBlock |
			"#text -> [obj name] <- [:val | obj name: val]."
			"#text -> obj name <- [:val | obj name: val]."
			propertyName := property value key.
			valueOrReadBlock := property value value.
			writeBlock := property key.

			propertyName -> [:value :set | set
				ifFalse: [valueOrReadBlock isBlock
					ifTrue: [valueOrReadBlock value]
					ifFalse: [valueOrReadBlock]]
				ifTrue: [writeBlock value: value]]
			]