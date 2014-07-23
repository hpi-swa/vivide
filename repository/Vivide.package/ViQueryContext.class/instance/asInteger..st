converting
asInteger: defaultValue

	^ contents
		ifNil: [defaultValue]
		ifNotNil: [:obj | obj asString asInteger]