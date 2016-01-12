as yet unclassified
appropriateSnippetsFor: someObjects

	 ^ someObjects
		ifEmpty: [ViProfile active organization snippetDefinitions
			select: [:def | def inputKind == UndefinedObject]]
		ifNotEmpty: [ 
			(ViQueryStepDefinition collectBaseClassesForContext: someObjects) in: [:baseClasses |
				ViProfile active organization snippetDefinitions select: [:def |
					"def receiverIsCollection not | (someObjects size > 1)" true
						and: [baseClasses includes: def inputKind]]]]