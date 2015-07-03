tests
test20TuplesWithTupleInput

	| q |
	q := {[:a :b | a + b]
		-> {#inputKind -> {Integer.Integer}}} asScript.
	sut firstStep: (ViQueryStep use: #((2 3)(10 20)) in: q).

	self assert: 2 equals: sut childCount.
	#(5 30) withIndexDo: [:result :index |
		self assert: result equals: (sut childAt: index) object].