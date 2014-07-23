tests
test01Organization

	self deny: definition isRegistered.
	editor registerDefinition.
	self assert: definition isRegistered.
	editor unregisterDefinition.
	self deny: definition isRegistered.