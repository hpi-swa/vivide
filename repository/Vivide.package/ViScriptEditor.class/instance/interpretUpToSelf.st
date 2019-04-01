support - debugging
interpretUpToSelf

	self flag: #suspicious. "mt: What do we know about script interpretation at this point? Should this check be moved to the interpreter?"
	
	^ self interpretUpToDetect: [:script | 
		self object isReference
			ifTrue: [script == self object reference]
			ifFalse: [script == self object]]  