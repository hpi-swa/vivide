as yet unclassified
convert: object

	^ (object isSymbol
		ifTrue: [(ViQueryOrganizer default stepById: object)
			ifNil: [(ViQueryOrganizer default definitionById: object)
				ifNotNil: [:def | ViQueryTransformStep new definition: def]]]
		ifFalse: [(object isString or: [object isClosure])
			ifTrue: [object asQuery]
			ifFalse: [object isVariableBinding
				ifTrue: [(self convert: object key) in: [:query |
					query definition
						inputKind: object value first;
						outputKind: object value second.
					query]]
				ifFalse: [object "assume real query object"]]])