navigation
referencesToDefinition: aDefinition
 	"Should be fast. Assume that all steps are registered."
	
	^ Array streamContents: [:strm |
		self orderedSteps do: [:step |
			step definition == aDefinition
				ifTrue: [strm nextPut: step]].
		self orderedCommands do: [:command |
			command definition == aDefinition
				ifTrue: [strm nextPut: command]]]