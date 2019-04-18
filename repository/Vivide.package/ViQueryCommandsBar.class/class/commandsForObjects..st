as yet unclassified
commandsForObjects: someObjects

	ViScriptOrganizer active ifNil: [^ #()].

	^ someObjects
		ifEmpty: [ViScriptOrganizer active globalCommands]
		ifNotEmpty: [:objs |
			(ViQueryStepDefinition collectBaseClassesForContext: objs) in: [:baseClasses |.
					ViScriptOrganizer active orderedCommands select: [:cmd |
						"cmd definition receiverIsCollection not | (someObjects size > 1)" true
							and: [baseClasses includes: cmd definition inputKind]]]].