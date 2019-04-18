tests
test07IsRegistered

	sut organization: ViScriptOrganizer new.
	self deny: sut isRegistered.
	sut register.
	self assert: sut isRegistered.
	sut unregister.
	self deny: sut isRegistered.