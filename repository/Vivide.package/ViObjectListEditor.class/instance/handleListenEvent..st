events
handleListenEvent: aKeyboardEvent

	self world ifNil: [^ self].

	"<cmd+left>"
	(((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowLeft])
		and: [self hasAnyKeyboard])
		ifTrue: [self selectPreviousPage].

	"<cmd+right>"
	(((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowRight])
		and: [self hasAnyKeyboard])
		ifTrue: [self selectNextPage].