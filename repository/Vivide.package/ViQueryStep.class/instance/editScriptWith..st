as yet unclassified
editScriptWith: someObjects

	^ ViSinglePaneEditor
		open: #artifacts
		for: (someObjects
			ifEmpty: [{}]
			ifNotEmpty: [{someObjects}]), self steps