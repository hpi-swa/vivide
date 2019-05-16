accessing
isProperty: aBoolean

	isProperty = aBoolean ifTrue: [^ self].

	isProperty in: [:old |
		isProperty := aBoolean.
		
		self notifier
			step: self
			properties: {#isProperty -> old}
			changedTo: {#isProperty -> aBoolean}].