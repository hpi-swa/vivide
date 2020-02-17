tests - collection patterns
test07Last

	self
		assert: #(4)
		equals: ([:numbers | numbers last] asScript process: #(1 2 3 4)) asArray.

	self
		assert: #(3 4)
		equals: ([:numbers | numbers last: 2] asScript process: #(1 2 3 4)) asArray.