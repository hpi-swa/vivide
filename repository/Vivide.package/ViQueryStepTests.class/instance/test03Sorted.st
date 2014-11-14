tests
test03Sorted

	self
		assert: #(1 2 3 4 5)
		equals: ([:numbers | numbers sorted: [:n1 :n2 | n1 <= n2]] asScript
			process: #(5 2 3 1 4)) asArray.