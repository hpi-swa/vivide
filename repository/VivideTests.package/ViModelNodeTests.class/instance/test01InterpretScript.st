tests
test01InterpretScript

	| script model |
	script := {
		[:num | num + 1].
		[:num | #text -> num asString]
	} asScript.
	model := script interpretScriptWith: #(1 2 3).
	
	self
		assert: 3 equals: model nodeCount;
		assert: #(2 3 4) equals: model objects asArray.