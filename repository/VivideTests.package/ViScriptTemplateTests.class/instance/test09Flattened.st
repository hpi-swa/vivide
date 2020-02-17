tests - collection patterns
test09Flattened
	
	self
		assert: #(1 2 3 4)
		equals: ([:pairs | pairs flattened] asScript process: #( ((1) 2) (3 (4)) )) asArray.