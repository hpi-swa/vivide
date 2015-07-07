tests
test06ReduceToSingle

	self
		flag: #hacky;
		assert: #(5)
		equals: ([:objs | objs collect: [:o | ]. {objs size}] asScript process: #(1 2 3 4 5)) asArray.