tests
test05MapMerged

	self
		assert: #(1 2   4 4   9 6   16 8   25 10)
		equals: ((ViQueryStep collect: '[:n | {n*n. n+n}]') process: #(1 2 3 4 5)).