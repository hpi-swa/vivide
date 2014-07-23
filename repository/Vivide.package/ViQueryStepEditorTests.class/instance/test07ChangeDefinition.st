tests
test07ChangeDefinition

	| changedObject |
	changedObject := ViQueryStepDefinition defIconAndLabel.
	self assert: step definition equals: editor currentDefinition.

	editor currentDefinition: changedObject.
	self
		assert: editor currentTypeFromStep ~~ editor currentType;
		assert: editor hasUnacceptedChanges.

	editor acceptDefinition.
	self deny: editor hasUnacceptedChanges.
	
	self assert: changedObject equals: step definition.