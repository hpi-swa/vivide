tests
test40InterpretScript
	
	| node |
	sut := [:num | num * num] asScript.
	node := sut interpretScriptWith: #(1 2 3 4).
	self assert: #(1 4 9 16) equals: node objects.
	
	sut := [42] asScript.
	node := sut interpretScript.
	self assert: #(42) equals: node objects