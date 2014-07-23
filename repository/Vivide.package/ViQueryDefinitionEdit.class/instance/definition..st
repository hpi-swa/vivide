accessing
definition: aQueryStepDefinition

	self updateForDefinition: aQueryStepDefinition.
	definition == aQueryStepDefinition ifTrue: [^ self].

	definition := aQueryStepDefinition.
	self definitionChanged.