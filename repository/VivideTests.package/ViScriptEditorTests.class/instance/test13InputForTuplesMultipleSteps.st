tests - multiple
test13InputForTuplesMultipleSteps

	script := {
		[:num | {num. num + 1} asTuples].
		[:a :b | a * b]
	} asScript.
	self setUpWindow: #(1 2 3).
	editor := window artifactContainers third.
	
	self assert: (editor input hasEqualElements: #( (1 2) (2 3) (3 4) )).