tests
test02NewMinimal

	| profile |
	profile := ViProfile newMinimal.
	
	self
		assert: profile isValid;
		assert: profile id notNil;
		assert: profile defaultView isBehavior;
		assert: profile archive notNil.
		
	profile archive removeFromSystem: false.