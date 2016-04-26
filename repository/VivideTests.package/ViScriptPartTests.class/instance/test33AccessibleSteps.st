tests
test33AccessibleSteps

	| script |
	script := {
		[:num | #text -> num printString].
		[:num | num * num].
		1.
		[:num | num + num] -> {#id -> #inaccessible}.
	} asScript.

	self assert: (script accessibleSteps hasEqualElements: (script steps first: 3)).