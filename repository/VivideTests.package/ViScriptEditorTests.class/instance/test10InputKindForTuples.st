tests - multiple
test10InputKindForTuples

	script := [:a :b | a + b] asScript.
	self setUpWindow: #( (1 2) (3 4) ).
	self assert: (editor inputKind hasEqualElements: {SmallInteger. SmallInteger}).