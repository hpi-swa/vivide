tests
test10ReferenceToDefault

	| script |
	script := {#identityTest} asScript.

	self assert: #identityTest asScript isDefault.
	self assert: script isReference.
	self assert: script reference == #identityTest asScript. 
	self assert: script organization ~~ script reference organization.