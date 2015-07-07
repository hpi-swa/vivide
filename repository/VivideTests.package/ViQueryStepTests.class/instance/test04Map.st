tests
test04Map

	self
		assert: #(1 4 9 16 25)
		equals: ([:n | n * n] asScript process: #(1 2 3 4 5)) asArray.