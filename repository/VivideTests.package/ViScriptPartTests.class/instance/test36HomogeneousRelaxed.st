as yet unclassified
test36HomogeneousRelaxed

	| script |
	script := {
		[:m | m].
		[:m | #text -> m asString].
	} asScript.

	self assert: script isHomogeneousRelaxed.
	self assert: script isHomogeneous.
	
	script := {
		[:m | m].
		[:m | #text -> m asString].
		[:m | m].
		[:m | #text -> m asString].
	} asScript.

	self assert: script isHomogeneousRelaxed.
	self deny: script isHomogeneous.
	
	script := {
		[:m | m].
		[:m | #text -> m asString].
		[:m | m].
		[:m | #text -> m asString].
		[:m | #text -> m asString].
	} asScript.
	
	self deny: script isHomogeneousRelaxed.
	self deny: script isHomogeneous.