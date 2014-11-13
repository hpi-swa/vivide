as yet unclassified
convert: object

	^ (object isSymbol
		ifTrue: [(ViQueryOrganizer active stepById: object)
			ifNil: [(ViQueryOrganizer active definitionById: object)
				ifNotNil: [:def | 
					def isMapDefinition
						ifFalse: [nil]
						ifTrue: [ViQueryTransformStep new definition: def]]]]
		ifFalse: [(object isString or: [object isClosure])
			ifTrue: [object asQuery]
			ifFalse: [object isVariableBinding
				ifTrue: [(self convert: object key) in: [:query |
					query definition
						inputKind: object value first;
						outputKind: object value second.
					query]]
				ifFalse: [object "assume real query object"]]])