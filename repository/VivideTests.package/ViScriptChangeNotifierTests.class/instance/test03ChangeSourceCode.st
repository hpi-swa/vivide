tests
test03ChangeSourceCode

	| oldCode |
	oldCode := script sourceCode.
	script sourceCode: (ViScriptTemplate expandString: '[:num | num + num]').
	
	self
		assert: self lastEvent isModified;
		assert: self lastEvent isSourceCodeChanged;
		assert: oldCode equals: self lastEvent oldSourceCode;
		assert: script sourceCode equals: self lastEvent newSourceCode.