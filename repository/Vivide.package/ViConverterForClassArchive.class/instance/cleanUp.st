as yet unclassified
cleanUp
	"Remove all methods in the class archive that are not referenced anymore."
	
	| archive used unused |
	archive := self theClass theMetaClass.
	
	used := Array streamContents: [:stream |
		self profile ifNotNil: [:profile | stream nextPut: (self selectorForProfile: profile)].
		
		self extractSteps do: [:step |
			stream nextPut: (self selectorForStep: step asDictionary)].
			
		self extractCommands do: [:command |
			stream
				nextPut: (self selectorForCommand: command asDictionary);
				nextPut: (self selectorForDefinition: command definition asDictionary)] ].
	
	unused := archive selectors copyWithoutAll: used.
	
	"Clean up!"
	unused do: [:selector | 
		archive removeSelectorSilently: selector.
		Transcript cr; show: ('[ViConverter] Obsolete method removed from archive ({1}): {2}' format: {archive.selector})].
	archive organization removeEmptyCategories.