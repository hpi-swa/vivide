support
checkProfile

	| testProfile |
	testProfile := ViProfile active. "Temporary variable for debugging."
	self assert: testProfile isValid.