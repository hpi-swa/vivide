tests - multiple
test11InputMultipleSteps
	
	script := {
		[:num | num + 1].
		[:num | num * num]
	} asScript.
	self setUpWindow: #(1 2 3).
	editor := window artifactContainers third.
	
	self assert: (editor input hasEqualElements: #(2 3 4)).