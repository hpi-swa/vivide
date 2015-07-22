accessing
isReference: aBoolean

	isReference = aBoolean ifTrue: [^ self].
	
	isReference in: [:old |
		isReference := aBoolean.
	
		self notifier
			stepPropertiesChanged: self
			from: {#isReference -> old}
			to: {#isReference -> aBoolean}].