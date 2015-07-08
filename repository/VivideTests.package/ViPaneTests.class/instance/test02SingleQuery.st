tests
test02SingleQuery

	sut
		objects: #(1 2 3);
		currentQuery: [:num | num * num] asScript.
	
	self assert: (sut results hasEqualElements: {1. 4. 9}).