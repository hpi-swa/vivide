tests
test08SourceCodeShort

	| sourceCode |
	sourceCode := '[:num | num * num]'.
	
	self assert: sourceCode asScript sourceCodeShort = sourceCode.