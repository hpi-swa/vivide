tests
test25AutoReference
	
	| script |
	script := {#identityTest} asScript.
	
	self assert: script isReference.
	self assert: script referenceId = #identityTest.
	
	script := {#identityTest -> {#example -> #blubb}} asScript.
	
	self deny: (#identityTest asScript valueOfProperty: #example) = #blubb.
	self assert: (script valueOfProperty: #example) = #blubb.