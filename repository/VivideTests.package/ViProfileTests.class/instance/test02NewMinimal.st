tests
test02NewMinimal

	| profile |
	profile := ViProfile newMinimal.
	
	self
		assert: profile isValid;
		assert: profile id notNil;
		assert: profile defaultView isBehavior;
		assert: profile converter notNil.
		
	profile converter theClass removeFromSystem: false.