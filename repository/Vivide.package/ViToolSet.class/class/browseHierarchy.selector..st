browsing
browseHierarchy: aClass selector: aSelector

	VivideLight active ifNil: [^ super browseHierarchy: aClass selector: aSelector].
	
	^ #classHierarchy asScript
		ifNil: [VivideLight active openArtifact: aClass]
		ifNotNil: [:script | script openScriptWith: {aClass}]