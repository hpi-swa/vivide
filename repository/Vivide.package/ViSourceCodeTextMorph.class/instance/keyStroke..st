event handling
keyStroke: aKeyboardEvent

	returnCount == 0 ifTrue: [previousTextEnd := text size + 1].

	super keyStroke: aKeyboardEvent.
	
	self readOnly ifTrue: [^ self].
	
	(({Character lf. Character cr. Character enter} includes: aKeyboardEvent keyCharacter)
		and: [self editor startIndex == (text size + 1)])
		ifTrue: [returnCount := returnCount + 1]
		ifFalse: [returnCount := 0].
		
	returnCount >= 2
		ifTrue: [self repeatedReturnPressed: returnCount].