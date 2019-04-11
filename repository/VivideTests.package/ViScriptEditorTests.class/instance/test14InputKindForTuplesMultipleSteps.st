tests - multiple
test14InputKindForTuplesMultipleSteps

	script := {
		[:num | {num. num even} asTuples].
		[:num :boolean | boolean ifTrue: [num]]
	} asScript.
	self setUpWindow: #(1 2 3).
	editor := window artifactContainers third.
	
	self assert: (editor inputKind hasEqualElements: {SmallInteger. Boolean}).