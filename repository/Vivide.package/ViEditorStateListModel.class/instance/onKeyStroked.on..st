actions
onKeyStroked: aKeyboardEvent on: aNode

	aKeyboardEvent keyCharacter == Character delete
		ifTrue: [self removeState: (aNode at: #state)].