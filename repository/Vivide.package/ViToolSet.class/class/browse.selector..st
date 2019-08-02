browsing
browse: aClass selector: aSelector

	VivideLight active ifNil: [^ super browse: aClass selector: aSelector].
	aSelector ifNil: [^ self browseClass: aClass].
	
	^ VivideLight active openArtifact: (MethodReference class: aClass selector: aSelector)