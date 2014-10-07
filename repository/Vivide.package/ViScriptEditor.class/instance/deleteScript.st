as yet unclassified
deleteScript

	self object isRegistered
		ifTrue: [self object organization deleteStep: self object]
		ifFalse: [
			self updateContext.
			(otherSteps detect: [:s | s next == self object] ifNone: [])
				ifNotNil: [:s | s next: self object next]].
	
	self flag: #useNotifierCallback. "mt: Do not close by yourself? Like method editors do when deleting methods."
	self close.