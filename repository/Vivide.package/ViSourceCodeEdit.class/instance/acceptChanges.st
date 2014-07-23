actions
acceptChanges

	self readOnly
		ifTrue: [^ self].

	self hasUnacceptedChanges
		ifFalse: [^ self].
		
	(self parse and: [self compile]) ifTrue: [
		"Play done animation."
		self autoAccept ifFalse: [  
			ViAnimatedImageMorph
				flyOutOn: self
				with: UiFugueIcons tickIcon].
		
		^ super acceptChanges].
		
	self grabKeyboard.