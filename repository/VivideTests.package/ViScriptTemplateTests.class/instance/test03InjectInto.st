tests - collection patterns
test03InjectInto

	self
		assert: #(10)
		equals: ([:numbers | numbers inject: 0 into: [:sum :n | sum + n]] asScript process: #(1 2 3 4)) asArray.