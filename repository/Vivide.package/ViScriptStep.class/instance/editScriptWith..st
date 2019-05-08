interactive tools
editScriptWith: someObjects

	^ #artifacts openScriptWith: 
		(someObjects
			ifEmpty: [{}]
			ifNotEmpty: [{someObjects}]), self steps