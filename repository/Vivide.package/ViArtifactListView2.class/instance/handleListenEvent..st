events
handleListenEvent: aKeyboardEvent

	self world ifNil: [^ self].

	"<cmd+up>"
	(((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowUp])
		and: [self hasAnyKeyboard])
		ifTrue: [self passKeyboardFocusUp].
		
	"<cmd+down>"
	(((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = Character arrowDown])
		and: [self hasAnyKeyboard])
		ifTrue: [self passKeyboardFocusDown].
		
	"<cmd+w>"
	self flag: #dangerous. "mt: Use keyUp instead? Keystrokes are repeated..."
	(((aKeyboardEvent isKeystroke
		and: [aKeyboardEvent commandKeyPressed])
		and: [aKeyboardEvent keyCharacter = $w])
		and: [self hasAnyKeyboard])
		ifTrue: [self focusedArtifact tryClose].