as yet unclassified
snippetDefinitionsFor: someObjects

	^ someObjects
		ifEmpty: [ViQueryOrganizer default snippetDefinitions
			select: [:def | def inputKind == UndefinedObject]]
		ifNotEmpty: [:objs |
			(ViQueryStepDefinition collectBaseClassesForContext: objs) in: [:baseClasses |.
				ViQueryOrganizer default snippetDefinitions select: [:def |
					"def receiverIsCollection not | (someObjects size > 1)" true
						and: [baseClasses includes: def inputKind]]]]