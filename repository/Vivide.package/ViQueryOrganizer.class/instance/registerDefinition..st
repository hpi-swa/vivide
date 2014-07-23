organization - definitions
registerDefinition: aStepDefinition

	(self definitions includesKey: aStepDefinition id)
		ifTrue: [^ self].
	self definitions at: aStepDefinition id put: aStepDefinition.
	self orderedDefinitions add: aStepDefinition.

	self notifier
		definitionRegistered: aStepDefinition.