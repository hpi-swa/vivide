as yet unclassified
test09VariablesAccess

	sut
		mapType: #each;
		sourceCode: '[:google :term | google find: term asString]'.

	self
		deny: (sut isWriteTo: #term);
		assert: (sut isReadOf: #term).
		
	sut sourceCode: '[:google :result | result contents: google goodLuck]'.
	self
		assert: (sut isWriteTo: #result);
		deny: (sut isReadOf: #result).