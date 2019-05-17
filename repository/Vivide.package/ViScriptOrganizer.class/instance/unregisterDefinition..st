organization - definitions
unregisterDefinition: aStepDefinition

	(self definitions includesKey: aStepDefinition id)
		ifFalse: [^ self].
	self definitions removeKey: aStepDefinition id.