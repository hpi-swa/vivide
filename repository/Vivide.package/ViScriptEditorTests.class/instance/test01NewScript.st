as yet unclassified
test01NewScript

	| script |
	script := [:numbers | numbers select: [:number | number even]] asScript.
	editor object: script.

	self assert: editor object == script.
	self assert: script sourceCode equals: editor sourceCode.
	self assert: (editor script includesSubstring: script sourceCode caseSensitive: true).
	self deny: editor shouldPropose.

	editor object: {[:object | object] -> {#isNew -> true}} asScript.
	self assert: editor shouldPropose.

	editor acceptSourceCode.
	self deny: editor shouldPropose.
	self assert: (editor object valueOfProperty: #isNew) ~~ true.