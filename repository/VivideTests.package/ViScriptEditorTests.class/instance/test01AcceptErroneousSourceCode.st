tests - single - debugging
test01AcceptErroneousSourceCode

	"1) Make a mistake."
	editor visibleSourceCode: '.][.'.
	self
		deny: (script sourceCode includesSubstring: '.][.');
		shouldnt: [editor acceptSourceCode] raise: SyntaxErrorNotification;
		deny: (script sourceCode includesSubstring: '.][.').

	"2) Fix that mistake."
	editor visibleSourceCode: '[:num | num - 1]'.
	self
		deny: (script sourceCode includesSubstring: '[:num | num - 1]');
		shouldnt: [editor acceptSourceCode] raise: SyntaxErrorNotification;
		assert: (script sourceCode includesSubstring: '[:num | num - 1]').