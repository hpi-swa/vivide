tests
test03Sorted

	self
		assert: #(1 2 3 4 5)
		equals: ((ViQueryStep sorted: '[:n1 :n2 | n1 <= n2]') process: #(5 2 3 1 4)).
	self
		assert: #(1 2 3 4 5)
		equals: ((ViQueryStep sorted2: '[:n1 :n2 | n1 <= n2]') process: #(5 2 3 1 4)).