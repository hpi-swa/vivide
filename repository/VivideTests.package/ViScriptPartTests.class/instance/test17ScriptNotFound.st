tests
test17ScriptNotFound

	self assert: #identityTest asScript notNil.
	self shouldnt: [#someNotExistingScript asScript] raise: Error.
	self assert: #someNotExistingScript asScript isNil.