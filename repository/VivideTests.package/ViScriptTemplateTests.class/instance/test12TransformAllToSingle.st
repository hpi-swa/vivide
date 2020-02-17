tests - collection patterns
test12TransformAllToSingle
	
	self flag: #workaround. "mt: This is not convenient. Exploit the detection of a specific selector to trigger the right template. Here: #collect:."
	
	self
		assert: #(5)
		equals: ([:objs | objs collect: [:o | ]. objs size] asScript process: #(1 2 3 4 5)) asArray.
		
	self flag: #hint. "mt: Better use #reduce: or #inject:into:. Or write the entire [:in :out | ] block."