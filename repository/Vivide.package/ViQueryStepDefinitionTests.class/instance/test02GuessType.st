tests
test02GuessType

	sut
		sourceCode: '[:morph | morph submorphs]';
		guessType.
	self deny: sut wantsAllObjectsAtOnce.
	
	sut
		sourceCode: '[:morphs | morphs select: [:morph | morph visible]]';
		guessType.
	self assert: sut wantsAllObjectsAtOnce.