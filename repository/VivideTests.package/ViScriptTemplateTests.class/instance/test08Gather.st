tests - collection patterns
test08Gather
	
	self
		assert: #(1 2   2 3   3 4   4 5)
		equals: ([:numbers | numbers gather: [:n | {n. n+1}]] asScript process: #(1 2 3 4)) asArray.
	
	"Note: Better avoid #gather: and directly transform a single object to a list of objects."
	self
		assert: #(1 2   2 3   3 4   4 5)
		equals: ([:n | {n. n+1}] asScript process: #(1 2 3 4)) asArray.