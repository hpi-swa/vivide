tests - interpretation
test02InterpretScript

	| script node |
	script := [:num | num * num] asScript.
	node := script interpretScriptWith: #(1 2 3 4).
	self assert: #(1 4 9 16) equals: node objects.
	
	script := [42] asScript.
	node := script interpretScript.
	self assert: #(42) equals: node objects.