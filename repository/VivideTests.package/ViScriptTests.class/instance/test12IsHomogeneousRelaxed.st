tests
test12IsHomogeneousRelaxed

	| script |
	script := {
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	
	self assert: script isHomogeneousRelaxed.

	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | #text -> num class name] -> { #mergeProperty -> true }.
	} asScript.

	self assert: script isHomogeneousRelaxed.

	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		1.
	} asScript.
	
	self
		assert: script isRecursive;
		assert: script isHomogeneousRelaxed.

	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	
	self assert: script isHomogeneousRelaxed.

	script := {
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | num * num].
		[:num | #text -> num asString].
		[:num | #text -> num class name] -> { #mergeProperty -> true }.
	} asScript.
	
	self deny: script isHomogeneousRelaxed.