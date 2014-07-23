accessing - convenience
referencesToDefinition: aDefinition
 	"Should be fast. Assume that all steps are registered."
	
	^ Array streamContents: [:strm |
		self orderedSteps do: [:step |
			step definition == aDefinition
				ifTrue: [strm nextPut: step].
			step viewDefinition == aDefinition
				ifTrue: [strm nextPut: step]].
		self orderedDefinitions do: [:def |
			def isMapDefinition ifTrue: [
				def updateSetDefinition == aDefinition
					ifTrue: [strm nextPut: def].
				def updateClearDefinition == aDefinition
					ifTrue: [strm nextPut: def]]].
		self orderedCommands do: [:command |
			command definition == aDefinition
				ifTrue: [strm nextPut: command]]]