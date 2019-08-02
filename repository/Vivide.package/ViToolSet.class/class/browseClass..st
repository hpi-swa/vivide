browsing
browseClass: aClass

	VivideLight active ifNil: [^ super browseClass: aClass].
	^ VivideLight active openArtifact: aClass