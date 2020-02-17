tests
test04AllObjectsRecursive

	| script model |
	script := {
		[:num | num > 1 ifTrue: [num - 1]].
		[:num | #text -> num asString].
		1.
	} asScript.
	model := script interpretScriptWith: #(11).
	
	self
		assert: 10 equals: model allObjects size;
		assert: #(10 9 8 7 6 5 4 3 2 1) equals: model allObjects asArray.