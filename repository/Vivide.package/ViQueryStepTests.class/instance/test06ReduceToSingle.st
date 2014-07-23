tests
test06ReduceToSingle

	self
		assert: #(5)
		equals: ((ViQueryStep transform: '[:objs | objs size]') process: #(1 2 3 4 5)).