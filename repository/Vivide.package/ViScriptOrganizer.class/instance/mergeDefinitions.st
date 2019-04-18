maintenance
mergeDefinitions
	"ViQueryOrganizer default mergeDefinitions."
	
	self orderedSteps do: [:query |
		query allStepsDo: [:step | step isReference
			ifFalse: [self mergeDefinitionsFor: step]]].