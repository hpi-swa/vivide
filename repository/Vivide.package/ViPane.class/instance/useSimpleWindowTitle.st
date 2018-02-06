testing - convenience
useSimpleWindowTitle

	^ self currentQuery
		ifNil: [true]
		ifNotNil: [:q | (q valueOfProperty: #windowTitle ifAbsent: [#full]) = #simple]