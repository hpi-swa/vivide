tests - enumeration
test03StepsDo

	| script |
	script := {
		[:num | num + num] -> { #id -> #one }.
		[:num | num - num] -> { #id -> #two }.
	} asScript.
	
	self
		assert: #(one two)
		equals: (Array streamContents: [:s | script stepsDo: [:step | s nextPut: step id]])