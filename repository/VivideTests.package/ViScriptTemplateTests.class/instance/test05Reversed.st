tests - collection patterns
test05Reversed

	self
		assert: #(4 3 2 1)
		equals: ([:numbers | numbers reversed] asScript process: #(1 2 3 4)) asArray.