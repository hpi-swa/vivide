tests
test07SourceCode

	| sourceCode |
	sourceCode := '[:num | num * num]'.
	
	self
		deny: sourceCode asScript sourceCode = sourceCode;
		assert: (sourceCode asScript sourceCode includesSubstring: sourceCode).