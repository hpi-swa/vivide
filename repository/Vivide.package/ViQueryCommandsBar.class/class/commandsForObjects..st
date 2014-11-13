as yet unclassified
commandsForObjects: someObjects

	^ someObjects
		ifEmpty: [ViQueryOrganizer active globalCommands]
		ifNotEmpty: [:objs |
			(ViQueryStepDefinition collectBaseClassesForContext: objs) in: [:baseClasses |.
					ViQueryOrganizer active orderedCommands select: [:cmd |
						"cmd definition receiverIsCollection not | (someObjects size > 1)" true
							and: [baseClasses includes: cmd definition inputKind]]]].