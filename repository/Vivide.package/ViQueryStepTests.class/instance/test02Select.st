tests
test02Select

	self
		assert: #(5 6 7 8)
		equals: ((ViQueryStep select: '[:number | number > 4]') process: #(1 2 3 4 5 6 7 8)).