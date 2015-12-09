errors
showLastException

	(self errorBtn valueOfProperty: #error) ifNotNil: [:ex |
		VivideLight active
			ifNil: [ex explore]
			ifNotNil: [:vivide | vivide openArtifact: ex]].