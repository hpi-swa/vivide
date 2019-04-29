tests
test11IsHomogeneous

	| script |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	
	self assert: script isHomogeneous.

	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | #text -> num class name] -> { #mergeProperty -> true }.
	} asScript.

	self assert: script isHomogeneous.

	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		1.
	} asScript.
	
	self
		assert: script isRecursive;
		assert: script isHomogeneous.

	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	
	self deny: script isHomogeneous.
	
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | #text -> num class name] -> { #mergeProperty -> true }.
	} asScript.
	
	self deny: script isHomogeneous.