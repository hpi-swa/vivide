tests - tuple patterns
test06TupleUnpackHint
	"Number of objects per tuple encoded in type hints."
	
	self
		assert: #(nil nil nil) 
		equals: ([:a :b :c | ] asScript valueOfProperty: #inputKind).