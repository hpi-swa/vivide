tests
test02ChangeLabel

	script label: 'test'.
	self
		assert: self lastEvent isRenamed;
		assert: 'test' equals: (self lastEvent newProperties at: #label).
		
	script label: 'other'.
	self
		assert: 'test' equals: (self lastEvent oldProperties at: #label);
		assert: 'other' equals: (self lastEvent newProperties at: #label).