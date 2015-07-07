tests
test03SyntaxError

	sut sourceCode: '[:m | .'.
	self should: [sut block] raise: Error.