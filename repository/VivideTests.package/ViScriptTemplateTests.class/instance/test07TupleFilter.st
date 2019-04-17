tests - tuple patterns
test07TupleFilter

	| script |
	script := [:a :b | a >= b
			ifTrue: [nil "Skip tuple."]
			ifFalse: [{ {a. b} }]] asScript.
	self
		assert:  #( (1 2)(1 3) (2 3) )
		equals: (script process: #(
			(1 1)(1 2)(1 3) (2 1)(2 2)(2 3) (3 1)(3 2)(3 3) )) asArray.