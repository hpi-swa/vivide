tests
test04ChangeView

	| changedObject |
	changedObject := ViQueryStepDefinition tileView.
	self assert: step viewDefinition == editor currentView.

	editor currentView: changedObject.
	self assert: editor hasUnacceptedChanges.

	editor acceptView.
	self deny: editor hasUnacceptedChanges.
	
	self assert: changedObject == step viewDefinition.