tests - extra patterns
test02IgnoreInput
	"Use only literals or any globally accessible object reference such as classes or globals. Ignore any objects provided in the input buffer."

	self
		assert: #(1 2 3 4)
		equals: ([#(1 2 3 4)] asScript process: #(a b c)) asArray.

	self
		assert: #(100)
		equals: ([100] asScript process: #(a b c)) asArray.