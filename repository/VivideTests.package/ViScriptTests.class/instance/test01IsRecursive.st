tests - recursion
test01IsRecursive
	
	| script |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		1.
	} asScript.

	self
		assert: script isRecursive;
		deny: script hasLocalCycle.