tests
test06ChangeSourceCode

	| changedObject |
	changedObject := '[:morph | morph submorphs]'.
	self assert: definition sourceCode equals: editor currentSourceCode.

	editor currentSourceCode: changedObject.
	self assert: editor hasUnacceptedChanges.

	editor acceptSourceCode.
	self deny: editor hasUnacceptedChanges.
	
	self assert: changedObject equals: definition sourceCode.