tests - collection patterns
test06First

	self
		assert: #(1)
		equals: ([:numbers | numbers first] asScript process: #(1 2 3 4)) asArray.

	self
		assert: #(1 2)
		equals: ([:numbers | numbers first: 2] asScript process: #(1 2 3 4)) asArray.