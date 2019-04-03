tests - tuple patterns
test01TupleUnpack

	self
		assert: #(13 2)
		equals: ([:a :b :c | a + b - c] asScript process: #( (10 5 2) (7 1 6) )) asArray