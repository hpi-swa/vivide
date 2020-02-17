tests
test07CountEvents

	script sourceCode: (ViScriptTemplate expandString: '[:num | num + num]').
	self assert: 1 equals: self eventCount.
	
	script label: 'test'.
	self assert: 2 equals: self eventCount.
	
	script next: [:num | num * num] asScript.
	self assert: 3 equals: self eventCount.
	
	script setProperty: #color toValue: #yellow.
	self assert: 4 equals: self eventCount.