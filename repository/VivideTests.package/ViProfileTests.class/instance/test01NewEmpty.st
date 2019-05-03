tests
test01NewEmpty

	| profile |
	profile := ViProfile newEmpty.
	
	self
		deny: profile isValid;
		assert: profile id notNil;
		assert: profile organization orderedSteps isEmpty;
		assert: profile defaultView isBehavior.