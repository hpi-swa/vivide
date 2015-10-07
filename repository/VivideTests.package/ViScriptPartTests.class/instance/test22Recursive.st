tests
test22Recursive
	
	| script |
	script := {
		[:m | m].
		[:m | #text -> m asString].
		1.
	} asScript.

	self assert: script isRecursive.