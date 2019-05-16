accessing
isExecutedAsynchronously: aBoolean

	isExecutedAsynchronously = aBoolean ifTrue: [^ self].

	isExecutedAsynchronously in: [:old |
		isExecutedAsynchronously := aBoolean.
		
		self notifier
			step: self
			properties: {#isExecutedAsynchronously -> old}
			changedTo: {#isExecutedAsynchronously -> aBoolean}].