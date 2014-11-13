browsing
browse: aClass selector: aSelector

	VivideLight active ifNil: [^ super browse: aClass selector: aSelector].
	^ VivideLight active openArtifact: (aSelector
		ifNil: [aClass]
		ifNotNil: [MethodReference class: aClass selector: aSelector])