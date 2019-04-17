tests - tuples and groups
test02TuplesAsOutput

	| interpreter |
	interpreter := ViScriptInterpreter
		on: [:num | { {num. num even} }] asScript
		using: #(1 2 3 4).
	interpreter upToEnd.
	
	self
		assert: #( (1 false) (2 true) (3 false) (4 true) )
		equals: interpreter objects asArray;
		deny: ((interpreter propertiesFor: #(1 false)) includesKey: #objects).