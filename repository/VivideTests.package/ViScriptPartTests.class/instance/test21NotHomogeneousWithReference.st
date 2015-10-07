tests
test21NotHomogeneousWithReference
	
	| script prop |
	script := {
		[:m | m].
		[:m | #text -> m asString].
		[:m | m].
	} asScript.
	prop := [:m | #text -> m asString] asScript.
	script steps last next: prop asReference.

	self deny: script isHomogeneous.