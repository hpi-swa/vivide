tests
test03AllObjects

	| script model |
	script := {
		[:num | num odd ifTrue: [num]].
		[:num | #text -> num asString].
		[:num | num + 1].
		[:num | #text -> num asString].
	} asScript.
	model := script interpretScriptWith: (1 to: 10) asArray.
	
	self
		assert: 10 equals: model allObjects size;
		assert: #(1 3 5 7 9 2 4 6 8 10) equals: model allObjects asArray.