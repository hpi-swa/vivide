tests
test03NextLabel

	| script |
	script := {
		[:num | num * num].
		[:numbers | numbers select: [:num | num even]] -> { #label -> 'Filter' }.
	} asScript.

	self
		assert: script label isNil;
		assert: 'Filter' equals: script nextLabel.
		
	script label: 'Multiply'.
	
	self
		assert: 'Multiply' equals: script label;
		assert: 'Multiply' equals: script nextLabel.