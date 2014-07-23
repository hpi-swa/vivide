tests
test03ChangeIcon

	| changedObject |
	changedObject := UiSilkIcons diskIcon.
	self assert: step icon equals: editor currentIcon.

	editor currentIcon: changedObject.
	self assert: editor hasUnacceptedChanges.

	editor acceptIcon.
	self deny: editor hasUnacceptedChanges.
	
	self assert: changedObject equals: step icon.