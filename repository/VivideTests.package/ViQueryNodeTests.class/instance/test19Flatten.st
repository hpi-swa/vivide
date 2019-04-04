tests
test19Flatten

	| q |
	q := [:object | object] asScript.
	sut
		inputForChildren: #( ((1 2) (a b)) foo );
		firstStep: q.
	self
		assert: 3 equals: sut childCount;
		assert: 2 equals: (sut childAt: 1) object size;
		assert: 2 equals: (sut childAt: 2) object size;
		assert: (sut childAt: 3) object = #foo.