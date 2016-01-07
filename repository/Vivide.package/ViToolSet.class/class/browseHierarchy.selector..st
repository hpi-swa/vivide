browsing
browseHierarchy: aClass selector: aSelector

	VivideLight active ifNil: [^ super browseHierarchy: aClass selector: aSelector].
	^ VivideLight active openArtifact: aClass