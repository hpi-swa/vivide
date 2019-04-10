tests - single
test01NewScript

	| script |
	script := [:numbers | numbers select: [:number | number even]] asScript.
	editor object: script.

	self assert: editor object == script.
	self assert: script sourceCode equals: editor scriptSourceCode.
	self assert: (editor fullSourceCode includesSubstring: script sourceCode caseSensitive: true).
	self deny: editor isWizardActive.

	editor object: {[:object | object] -> {#isNew -> true}} asScript.
	self assert: editor isWizardActive.

	editor acceptSourceCode.
	self deny: editor isWizardActive.
	self assert: (editor object valueOfProperty: #isNew) ~~ true.