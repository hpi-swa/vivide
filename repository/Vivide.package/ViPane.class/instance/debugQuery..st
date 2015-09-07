actions
debugQuery: aQuery

	ViProfile active ifNotNil: [:profile |
		profile recentScripts addObject: aQuery].

	^ ViSinglePaneEditor
		open: #artifacts
		for: (self objects
			ifEmpty: [{}]
			ifNotEmpty: [{self objects}]), aQuery steps