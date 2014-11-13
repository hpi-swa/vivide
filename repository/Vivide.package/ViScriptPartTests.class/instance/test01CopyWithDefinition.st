tests
test01CopyWithDefinition

	| script copy |
	script := [:num | num * num] asScript.
	copy := script copy.

	self
		assert: script ~~ copy;
		assert: script id ~= copy id;
		assert: script sourceCode = copy sourceCode;
		assert: script definition ~~ copy definition.