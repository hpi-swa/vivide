tests
test02Select

	self
		assert: #(5 6 7 8)
		equals: ([:numbers | numbers select: [:n | n > 4]] asScript
			process: #(1 2 3 4 5 6 7 8)) asArray.