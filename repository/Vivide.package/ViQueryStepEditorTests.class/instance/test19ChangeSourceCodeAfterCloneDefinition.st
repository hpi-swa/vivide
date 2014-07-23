tests
test19ChangeSourceCodeAfterCloneDefinition

	editor useNewCode.
	self assert: definition sourceCode = editor currentSourceCode.

	editor currentSourceCode: '[:morph | morph submorphs]'.
	self assert: definition sourceCode ~= editor currentSourceCode.

	editor acceptSourceCode.	
	self
		assert: step definition ~~ definition;
		assert: editor currentDefinition == step definition;
		assert: '[:morph | morph submorphs]' equals: step definition sourceCode;
		assert: definition sourceCode ~= editor currentSourceCode.