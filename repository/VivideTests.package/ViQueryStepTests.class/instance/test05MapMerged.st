tests
test05MapMerged

	self
		assert: #(1 2   4 4   9 6   16 8   25 10)
		equals: ([:n | {n*n. n+n}] asScript process: #(1 2 3 4 5)) asArray.