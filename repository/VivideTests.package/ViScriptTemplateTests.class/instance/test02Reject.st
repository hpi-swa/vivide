tests - collection patterns
test02Reject

	self
		assert: #(1 3)
		equals: ([:numbers | numbers reject: [:n | n even]] asScript process: #(1 2 3 4)) asArray.