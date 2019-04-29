accessing
isExecutedAsynchronously: aBoolean

	isExecutedAsynchronously = aBoolean ifTrue: [^ self].

	isExecutedAsynchronously in: [:old |
		isExecutedAsynchronously := aBoolean.
		
		self notifier
			stepPropertiesChanged: self
			from: {#isExecutedAsynchronously -> old}
			to: {#isExecutedAsynchronously -> aBoolean}].