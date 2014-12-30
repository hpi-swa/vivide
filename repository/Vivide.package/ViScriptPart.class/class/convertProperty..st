support
convertProperty: property
	"Converte read/write blocks."

	^ (property isVariableBinding and: [property key isVariableBinding])
		ifFalse: [property]
		ifTrue: [ | propertyName valueOrReadBlock writeBlock |
			"#text -> [obj name] -> [:val | obj name: val]."
			"#text -> obj name -> [:val | obj name: val]."
			propertyName := property key key.
			valueOrReadBlock := property key value.
			writeBlock := property value.

			propertyName -> [:value :set | set
				ifFalse: [valueOrReadBlock isBlock
					ifTrue: [valueOrReadBlock value]
					ifFalse: [valueOrReadBlock]]
				ifTrue: [writeBlock value: value]]
			]