organization - steps
registerStep: aStep

	(self steps includesKey: aStep id)
		ifTrue: [^ self].		
	self steps at: aStep id put: aStep.
	
	self notifier
		step: aStep
		registeredIn: self.