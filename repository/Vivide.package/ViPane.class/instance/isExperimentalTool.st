testing - convenience
isExperimentalTool
	"Convenience. Does this pane looks like an attempt to find a good tool?"
	
	^ self script notNil
		and: [self script isDefault not]