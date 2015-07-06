tests
test09IsDefault

	self assert: (organization stepById: #identityTest) notNil.
	self assert: #identityTest asScript isDefault.
	self assert: #identityTest asScript == (organization stepById: #identityTest).