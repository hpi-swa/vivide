tests
test15ProcessWithGroups

	| script a b |
	script := {
		[:num | {num even. num} asTuples].
		[:tuples | tuples asGroups].
	} asScript.
	
	a := script.
	b := a next.
	
	self assert: (#( (true ((2)(4))) (false ((1)(3))) ) hasEqualElements: (b process: (a process: #(1 2 3 4)))).