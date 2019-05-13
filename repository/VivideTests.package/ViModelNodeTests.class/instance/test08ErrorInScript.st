tests
test08ErrorInScript

	| script model |
	script := [:num | num / 0] asScript.
	
	self
		shouldnt: [model := script interpretScriptWith: #(1 2 3)] raise: Error;
		shouldnt: [model nodes] raise: Error;
		assert: 0 equals: model nodeCount. "Just skip child computation."