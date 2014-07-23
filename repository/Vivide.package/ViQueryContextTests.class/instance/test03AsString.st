tests
test03AsString

	self
		assert: '' equals: sut asString;
		assert: #test03AsString equals: (sut asString: #test03AsString).
	
	sut contents: 42.
	self assert: '42' equals: sut asString.
	
	sut contents: '<b>Hello World!</b>' asHtmlText.
	self assert: 'Hello World!' equals: sut asString.