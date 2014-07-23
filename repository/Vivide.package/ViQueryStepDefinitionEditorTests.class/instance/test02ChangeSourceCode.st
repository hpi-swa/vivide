tests
test02ChangeSourceCode

	| changedObject |
	changedObject := '[:morph | morph submorphs]'.
	self assert: definition sourceCode equals: editor currentSourceCode.

	editor currentSourceCode: changedObject.
	self
		assert: editor hasUnacceptedChanges;
		deny: definition isRegistered.

	editor acceptSourceCode.
	self
		deny: editor hasUnacceptedChanges;
		assert: definition isRegistered;
		assert: changedObject equals: definition sourceCode.