tests
test08IconCode

	sut := ViScriptPart new icon: ViIcons vivideLogo.
	self
		assert: 'ViIcons vivideLogo'
		equals: sut iconCode.
		
	sut
		icon: nil;
		iconCode: 'ViIcons vivideLogo'.
	self
		assert: ViIcons vivideLogo
		equals: sut icon.