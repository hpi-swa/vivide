browsing
browseHierarchy: aClass selector: aSelector

	ActiveVivide ifNil: [^ super browseHierarchy: aClass selector: aSelector].
	^ ActiveVivide openArtifact: (aSelector
		ifNil: [aClass]
		ifNotNil: [MethodReference class: aClass selector: aSelector])