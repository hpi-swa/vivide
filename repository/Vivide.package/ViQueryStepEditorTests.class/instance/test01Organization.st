tests
test01Organization

	self
		deny: step isRegistered;
		deny: definition isRegistered.
		
	editor registerQuery.
	
	self
		assert: step isRegistered;
		assert: definition isRegistered.
		
	editor unregisterQuery.
	
	self
		deny: step isRegistered;
		assert: definition isRegistered.