tests - multiple
test12InputKindMultipleSteps

	script := {
		[:num | num even].
		[:boolean | boolean not]
	} asScript.
	self setUpWindow: #(1 2 3).
	editor := window artifactContainers third.
	
	self assert: (editor inputKind hasEqualElements: {Boolean}).