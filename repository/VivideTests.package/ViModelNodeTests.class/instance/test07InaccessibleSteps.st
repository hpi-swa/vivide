tests
test07InaccessibleSteps

	| script model |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		1.
		[:num | num / 0]. "Inaccessible / unreachable"
	} asScript.
	model := script interpretScriptWith: #(1 2 3).
	
	self
		assert: #(1 4 9) equals: model objects;
		assert: #(1) equals: model nodes first objects;
		assert: #(16) equals: model nodes second objects;
		assert: #(81) equals: model nodes third objects.