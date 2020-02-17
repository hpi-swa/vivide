support
type: aString in: aMorph
	"Focus the given morph and type the string, character by character."

	aMorph grabKeyboard.
	
	aString do: [:char |
		| inputEvent |
		inputEvent := (KeyboardEvent new
			setType: #keystroke
			buttons: 0 "no modifiers"
			position: aMorph center
			keyValue: char asciiValue
			hand: ActiveHand
			stamp: Time millisecondClockValue).
				
		ActiveHand keyboardFocus processFocusEvent: inputEvent].