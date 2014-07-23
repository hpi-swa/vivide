tests
test04AsInteger

	self
		assert: 0 equals: sut asInteger;
		assert: 23 equals: (sut asInteger: 23).
	
	sut contents: '42'.
	self assert: 42 equals: sut asInteger.
	
	sut contents: '<b>5</b>' asHtmlText.
	self assert: 5 equals: sut asInteger.