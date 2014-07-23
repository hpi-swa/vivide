converting
asString: defaultValue

	^ contents
		ifNil: [defaultValue]
		ifNotNil: [:obj | obj asString]