tests
test18DeepCopy

	| script deepCopy |
	script := [:num | num * num] asScript.
	deepCopy := script deepCopy.

	self assert: script ~~ deepCopy.
	self assert: script sourceCode equals: deepCopy sourceCode.
	self assert: script steps size equals: deepCopy steps size.
	self assert: (script process: #(1 2 3 4)) equals: (deepCopy process: #(1 2 3 4)).