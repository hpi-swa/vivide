as yet unclassified
editScriptWith: someObjects

	"New scripts are green by default."
	(self isProfileScript not and: [self color isNil])
		ifTrue: [self color: (Color fromString: '#8DCB8D')].

	^ #artifacts openScriptWith: 
		(someObjects
			ifEmpty: [{}]
			ifNotEmpty: [{someObjects}]), self steps