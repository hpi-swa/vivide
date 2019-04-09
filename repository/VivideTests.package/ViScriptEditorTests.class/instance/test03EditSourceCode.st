tests
test03EditSourceCode

	| script |
	script := [:num | num * 2] asScript.
	editor object: script.

	self assert: #(2 4 6) equals: (script process: #(1 2 3)) asArray.

	self
		deny: editor isWizardActive;
		assert: '[:num | num * 2]'
		equals: editor visibleSourceCode.
		
	editor visibleSourceCode: '[:num | num * num]'.
	editor acceptSourceCode.
	
	self assert: #(1 4 9) equals: (script process: #(1 2 3)) asArray.