accessing
isProperty: aBoolean

	isProperty = aBoolean ifTrue: [^ self].

	isProperty in: [:old |
		isProperty := aBoolean.
		
		self notifier
			stepPropertiesChanged: self
			from: {#isProperty -> old}
			to: {#isProperty -> aBoolean}].