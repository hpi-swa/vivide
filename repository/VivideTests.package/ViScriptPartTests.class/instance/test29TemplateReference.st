tests
test29TemplateReference

	| script |
	script := [#identityTest] asScript.

	self assert: script isReference.
	self assert: (script reference == #identityTest asScript).