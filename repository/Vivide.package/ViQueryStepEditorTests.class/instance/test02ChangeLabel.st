tests
test02ChangeLabel

	| changedObject |
	changedObject := 'test02ChangeLabel'.
	self assert: step label equals: editor currentLabel.

	editor currentLabel: changedObject.
	self assert: editor hasUnacceptedChanges.

	editor acceptLabel.
	self deny: editor hasUnacceptedChanges.
	
	self assert: changedObject equals: step label.