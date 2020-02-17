tests
test10DefaultViewClass

	| script |
	script := [:num | num * num] asScript.
	self
		deny: (script hasProperty: #view);
		assert: script viewClass notNil.