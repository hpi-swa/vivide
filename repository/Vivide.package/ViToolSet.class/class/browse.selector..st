browsing
browse: aClass selector: aSelector

	ActiveVivide ifNil: [^ super browse: aClass selector: aSelector].
	^ ActiveVivide openArtifact: (aSelector
		ifNil: [aClass]
		ifNotNil: [MethodReference class: aClass selector: aSelector])