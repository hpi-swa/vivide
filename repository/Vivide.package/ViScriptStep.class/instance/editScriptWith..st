interactive tools
editScriptWith: someObjects

	^ VivideLight active ifNotNil: [:vivide |
		vivide
			openScript: #artifacts
			withObjects: (someObjects
				ifEmpty: [{}]
				ifNotEmpty: [{someObjects}]), self steps]