tests
test20TuplesWithTupleInput

	| q |
	q := [:a :b | a + b] -> {{Integer.Integer}.Integer}.
	sut firstStep: (ViQueryStep use: #((2 3)(10 20)) in: q).

	self assert: 4 equals: sut childCount.
	#(12 22 13 23) withIndexDo: [:result :index |
		self assert: result equals: (sut childAt: index) object].