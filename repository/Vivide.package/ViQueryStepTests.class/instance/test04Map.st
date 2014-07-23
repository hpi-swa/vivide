tests
test04Map

	self
		assert: #(1 4 9 16 25)
		equals: ((ViQueryStep collect: '[:n | n * n]') process: #(1 2 3 4 5)).