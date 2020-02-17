tests
test04NoImplicitFlattenForTransformation
	"Within a script step, the objects appear as-is. There is no auto-magic flattening of any input tuples."
	
	self
		should: [[:num | num even] asScript process: #( (1 2) 3 (4 5) )]
		raise: Error.

	self
		should: [[:a :b | a even & b even] asScript process: #( (1 2) 3 (4 5) )]
		raise: Error.
	
	"Users have to know their data input format."
	self
		assert: #(true false false)
		equals: ([:a :b | a even & b even] asScript process: #( (2 4) (3 5) (4 5) ) ) asArray.