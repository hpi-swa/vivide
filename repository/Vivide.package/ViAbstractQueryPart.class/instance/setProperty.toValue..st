properties
setProperty: property toValue: value

	value ifNil: [^ self properties removeKey: property ifAbsent: []].
	^ self properties at: property put: value