tests
test32InaccessibleSteps

	| script |
	script := {
		[:num | #text -> num printString].
		[:num | num * num].
		1.
		[:num | num + num] -> {#id -> #inaccessible}.
	} asScript.

	self assert: 1 equals: script inaccessibleSteps size.
	self assert: #inaccessible equals: script inaccessibleSteps first id.