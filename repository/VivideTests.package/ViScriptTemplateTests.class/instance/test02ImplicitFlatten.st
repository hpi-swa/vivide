tests
test02ImplicitFlatten
	"Unpack one level of collections."
	
	self
		assert: #(1 2 3 4 5)
		equals: ([:numOrPair | numOrPair] asScript process: #( (1 2) 3 (4 5) )) asArray.