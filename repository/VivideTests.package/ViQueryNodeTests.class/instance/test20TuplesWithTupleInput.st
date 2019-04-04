tests
test20TuplesWithTupleInput

	| q |
	q := {[:a :b | a + b]
		-> {#inputKind -> {Integer.Integer}}} asScript.
	sut
		inputForChildren: #((2 3)(10 20));
		firstStep: q.

	self assert: 2 equals: sut childCount.
	#(5 30) withIndexDo: [:result :index |
		self assert: result equals: (sut childAt: index) object].