browsing
browseHierarchy: aClass selector: aSelector
	"Ignore the selector because Vivide tools are more compact."
	
	VivideLight active ifNil: [^ super browseHierarchy: aClass selector: aSelector].

	^ #classHierarchy asScript
		ifNil: [VivideLight active openArtifact: aClass]
		ifNotNil: [:script | script openScriptWith: {aClass}]