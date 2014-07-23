maintenance
mergeDefinitions
	"ViQueryOrganizer default mergeDefinitions."
	
	self orderedSteps do: [:query |
		query allStepsDo: [:step | step isReferenceStep
			ifFalse: [self mergeDefinitionsFor: step]]].