tests - multiple
test09InputForTuples

	script := [:a :b | a + b] asScript.
	self setUpWindow: #( (1 2) (3 4) ).
	self assert: (editor input hasEqualElements: #( (1 2) (3 4) )).