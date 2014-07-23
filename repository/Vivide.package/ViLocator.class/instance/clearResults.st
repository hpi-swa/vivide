actions - results
clearResults

	self assert: iterator isNil.

	resultList model
		removeAllGroups;
		addDefaultGroup.
		
	resultList autoSortBlock: nil.
	self addHelpResults.