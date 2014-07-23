events-processing
handleListenEvent: aKeyboardEvent

	"<cmd-k>"
	((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = $k])
		ifTrue: [locator ifNotNil: [:l | l grabKeyboard; selectAll]].