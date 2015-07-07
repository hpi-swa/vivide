tests
test11AsReference
	
	| script |
	script := #identityTest asScript asReference.

	self assert: script isReference.
	self assert: script reference == #identityTest asScript. 
	self assert: script organization ~~ script reference organization.