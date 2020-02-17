tests - collection patterns
test01Select

	self
		assert: #(2 4)
		equals: ([:numbers | numbers select: [:n | n even]] asScript process: #(1 2 3 4)) asArray.