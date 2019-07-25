tests
test02SingleQuery

	sut
		script: [:num | num * num] asScript;
		objects: #(1 2 3).
	
	self assert: (sut results hasEqualElements: {1. 4. 9}).