organization - steps
unregisterStep: aStep

	(self steps includesKey: aStep id)
		ifFalse: [^ self].
	self steps removeKey: aStep id.
	
	self notifier
		step: aStep
		unregisteredIn: self.