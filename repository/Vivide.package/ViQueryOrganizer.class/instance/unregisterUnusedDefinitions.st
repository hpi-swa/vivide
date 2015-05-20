maintenance
unregisterUnusedDefinitions

	| defs |
	self registerAllReachableStepsAndDefinitions.
	
	defs := (self orderedDefinitions reject: [:def | def isSnippetDefinition]) asOrderedCollection.
	self orderedSteps do: [:query | query allStepsDo: [:step |
		defs remove: step definition ifAbsent: [].
		defs remove: step viewDefinition ifAbsent: []]].
	self codeDefinitions do: [:def |
		defs remove: def updateSetDefinition ifAbsent: [].
		defs remove: def updateClearDefinition ifAbsent: []].
	
	
	self flag: #magicNumber. "mt: How to really check whether the ID is a UUID or a custom label?"
	defs
		select: [:def | def id size = 36 "UUID"]
		thenDo: [:d | 
			d unregister.
			Transcript cr; show: '[ViQueryOrganizer] Definition dropped: ', d sourceCode].