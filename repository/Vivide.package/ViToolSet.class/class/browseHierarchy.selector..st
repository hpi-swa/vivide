browsing
browseHierarchy: aClass selector: aSelector

	VivideLight active ifNil: [^ super browseHierarchy: aClass selector: aSelector].
	^ VivideLight active openArtifact: (aSelector
		ifNil: [aClass]
		ifNotNil: [MethodReference class: aClass selector: aSelector])