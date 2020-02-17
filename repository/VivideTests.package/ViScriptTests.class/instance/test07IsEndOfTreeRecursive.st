tests - recursion
test07IsEndOfTreeRecursive

	| script |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		1.
	} asScript.
	
	self
		deny: script isEndOfTree;
		assert: script steps last isEndOfTree.