tests
test19Flatten

	| q |
	q := [:o | o] asQuery.
	sut firstStep: (ViQueryStep use: #( ((1 2) (a b)) foo ) in: q).
	self
		assert: 3 equals: sut childCount;
		assert: 2 equals: (sut childAt: 1) object size;
		assert: 2 equals: (sut childAt: 2) object size;
		assert: (sut childAt: 3) object = #foo.