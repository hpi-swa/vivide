tests
test12Tuples

	| script model |
	script := {
		[:symbol | { symbol. symbol size } asTuples ].
		[:symbol :number | #text -> symbol].
		[:symbol :number | { number. number * 2 }].
	} asScript.
	model := script interpretScriptWith: #(tree flower).
	
	self
		assert: 2 equals: model nodeCount;
		assert: #tree equals: model firstNode text;
		assert: #( (tree 4) ) equals: model firstNode inputForChildren;
		assert: #(4 8) equals: model firstNode objects.