*vivide
open
	
	VivideLight active
		ifNil: [self explore]
		ifNotNil: [:vivide | vivide openArtifact: self].