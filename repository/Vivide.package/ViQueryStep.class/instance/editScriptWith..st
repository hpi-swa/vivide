as yet unclassified
editScriptWith: someObjects

	^ #artifacts openScriptWith: 
		(someObjects
			ifEmpty: [{}]
			ifNotEmpty: [{someObjects}]), self steps