testing - convenience
useSimpleWindowTitle

	^ self script
		ifNil: [true]
		ifNotNil: [:q | (q valueOfProperty: #windowTitle ifAbsent: [#full]) = #simple]