tests
test20HomogeneousWithReference
	
	| script |
	script := {
		[:m | m].
		[:m | #text -> m asString].
		1
	} asScript.

	self assert: script isHomogeneous.