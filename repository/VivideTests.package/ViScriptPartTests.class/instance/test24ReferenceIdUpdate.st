tests
test24ReferenceIdUpdate
	
	| script another |
	script := #identityTest asScript asReference.

	another := [:a | a] asScript.
	another adoptOrganization: organization.
	
	self assert: script referenceId = #identityTest.
	script reference: another.
	self assert: script referenceId = another id.