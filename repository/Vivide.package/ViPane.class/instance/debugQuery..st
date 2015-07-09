actions
debugQuery: aQuery

	^ ViSinglePaneEditor
		open: #artifacts
		for: (self objects
			ifEmpty: [{}]
			ifNotEmpty: [{self objects}]), aQuery steps