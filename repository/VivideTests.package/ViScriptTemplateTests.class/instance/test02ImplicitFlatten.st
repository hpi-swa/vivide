tests
test02ImplicitFlatten
	"Unpack one level of collections."
	
	self
		assert: #(1 2 3 4 5)
		equals: ([:numOrPair | numOrPair] asScript process: #( (1 2) 3 (4 5) )) asArray.

	self
		assert: #(1 1  2 2  3 3  4 4  5 5)
		equals: ([:num | { num. num } ] asScript process: #( 1 2 3 4 5 )) asArray.

	"Users have to double-wrap pairs (or tuples) to retain them."
	self
		assert: #( (1 1)  (2 2)  (3 3)  (4 4)  (5 5) )
		equals: ([:num | {{ num. num }} ] asScript process: #( 1 2 3 4 5 )) asArray.
	
	"Or directly work with the output buffer."
	self
		assert: #( (1 1)  (2 2)  (3 3)  (4 4)  (5 5) )
		equals: ([:in :out | out addAll: (in collect: [:num | { num. num } ]) ] asScript process: #( 1 2 3 4 5 )) asArray.