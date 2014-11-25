as yet unclassified
test02SingleQuery

	sut
		objects: #(1 2 3);
		currentQuery: [:num | num * num] asQuery.
	
	self assert: (sut results hasEqualElements: {1. 4. 9}).