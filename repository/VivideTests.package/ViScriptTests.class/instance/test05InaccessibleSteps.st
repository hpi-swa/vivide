tests - recursion
test05InaccessibleSteps

	| script |
	script := {
		[:num | #text -> num printString].
		[:num | num * num].
		1.
		[:num | num + num] -> {#id -> #inaccessible}.
	} asScript.

	self assert: #inaccessible equals: script inaccessibleSteps first id.