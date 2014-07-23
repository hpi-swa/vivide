events-processing
handleListenEvent: aKeyboardEvent

	"<cmd+left>"
	(((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowLeft])
		and: [self hasAnyKeyboard])
		ifTrue: [self passKeyboardFocusLeft].
		
	"<cmd+right>"
	(((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowRight])
		and: [self hasAnyKeyboard])
		ifTrue: [self passKeyboardFocusRight].