actions
close

	ActiveVivide == self ifTrue: [
		ActiveVivide := nil].
	
	ActiveHand removeKeyboardListener: self.