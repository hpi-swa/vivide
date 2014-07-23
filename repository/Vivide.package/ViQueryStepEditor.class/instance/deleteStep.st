actions
deleteStep

	self step isRegistered
		ifTrue: [self step organization deleteStep: self step]
		ifFalse: [
			self updateContext.
			(otherSteps detect: [:s | s next == self step] ifNone: [])
				ifNotNil: [:s | s next: self step next]].
	
	self flag: #useNotifierCallback. "mt: Do not close by yourself? Like method editors do when deleting methods."
	self close.