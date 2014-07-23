accessing
definition: aQueryStepDefinition

	definition == aQueryStepDefinition ifTrue: [^ self].
	
	definition in: [:oldDefinition |
		definition := aQueryStepDefinition.
	
		self notifier
			stepDefinitionChanged: self
			from: oldDefinition to: definition]