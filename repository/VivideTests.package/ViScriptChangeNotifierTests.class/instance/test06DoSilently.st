tests
test06DoSilently

	notifier doSilently: [
		script
			sourceCode: (ViScriptTemplate expandString: '[:num | num + num]');
			label: 'test';
			next: [:num | num * num] asScript;
			setProperty: #color toValue: #yellow].
		
	self assert: 0 equals: self eventCount.