tests
test08IconCode

	sut := ViScriptPart new icon: ViIcons icons8User64px1Icon.
	self
		assert: 'ViIcons icons8User64px1Icon'
		equals: sut iconCode.
		
	sut
		icon: nil;
		iconCode: 'ViIcons icons8User64px1Icon'.
	self
		assert: ViIcons icons8User64px1Icon
		equals: sut icon.