tests - collection patterns
test10Detect

	self
		assert: #(42)
		equals: ([:numbers | numbers detect: [:n | n \\ 7 = 0]] asScript process: #(23 42 66 54) ) asArray.

	self
		assert: #(0)
		equals: ([:numbers | numbers detect: [:n | n \\ 7 = 0] ifNone: [0]] asScript process: #(23 52 66 54) ) asArray.