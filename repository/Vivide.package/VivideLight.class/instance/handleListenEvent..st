events-processing
handleListenEvent: aKeyboardEvent

	"Use <ctrl-tab> under windows..."
	((aKeyboardEvent isKeyDown "isKeyUp?"
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character tab])
		ifTrue: [self tabAmongWindows].
	
	aKeyboardEvent isKeystroke ifFalse: [^ self].
	
	"<cmd-k>"
	(aKeyboardEvent commandKeyPressed
		and: [aKeyboardEvent keyCharacter = $k])
		ifTrue: [locator ifNotNil: [:l | l grabKeyboard; selectAll]].