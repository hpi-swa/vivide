tests - collection patterns
test04Sorted

	self
		assert: #(4 3 2 1)
		equals: ([:numbers | numbers sorted: [:a :b | a > b]] asScript process: #(1 2 3 4)) asArray.