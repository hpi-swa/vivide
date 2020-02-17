tests
test01RegisterUnregister

	script unregister.
	self
		assert: self lastEvent isRemoved;
		assert: script equals: self lastEvent item.
		
	script register.
	self
		assert: self lastEvent isAdded;
		assert: script equals: self lastEvent item.