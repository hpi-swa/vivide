actions
debugQuery: aQuery

	self owner ifNil: [^ self].
		
	ViSinglePaneEditor
		open: #artifacts
		for: (self objects
			ifEmpty: [{}]
			ifNotEmpty: [{self objects}]), aQuery steps.