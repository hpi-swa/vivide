tests
test10CloneDefinition

	editor useNewCode.
	self
		assert: editor hasUnacceptedChanges;
		assert: definition ~~ editor currentDefinition;
		deny: editor currentDefinition isRegistered.
		
	editor acceptSourceCode. "Not enough because definition-specific."
	self
		deny: editor hasUnacceptedChanges;
		assert: definition ~~ editor currentDefinition;
		assert: editor currentDefinition isRegistered.