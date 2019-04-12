tests - single
test10UnacceptedChanges
	"If the script code changes elsewhere, do not discard unaccepted changes in the editor."
	
	self
		deny: editor hasUnacceptedChanges;
		assert: #(1 4 9) equals: (script interpretScriptWith: #(1 2 3)) objects.
		
	editor visibleSourceCode: '[:num | num + num]'.
	
	self flag: #hacky.
	editor grabKeyboard.
	ActiveHand keyboardFocus processFocusEvent: (KeyboardEvent new
		setType: #keystroke
		buttons: 0 "no modifiers"
		position: editor center
		keyValue: Character space asciiValue
		hand: ActiveHand
		stamp: Time millisecondClockValue).
	
	self assert: editor hasUnacceptedChanges.
	
	script sourceCode: [:num | num * 100] asScript sourceCode.
	self
		assert: '[:num |  num + num]' equals: editor visibleSourceCode;
		assert: #(100 200 300) equals: (script interpretScriptWith: #(1 2 3)) objects.
	
	"User can overwrite external changes."
	editor acceptSourceCode.
	self assert: #(2 4 6) equals: (script interpretScriptWith: #(1 2 3)) objects.	