testing - convenience
isExperimentalTool
	"Convenience. Does this pane looks like an attempt to find a good tool?"
	
	^ self currentQuery notNil
		and: [self currentQuery isDefault not]