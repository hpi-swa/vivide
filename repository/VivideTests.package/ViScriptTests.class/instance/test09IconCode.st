tests
test09IconCode

	<timeout: 60>
	
	| script |
	script := [:num | num * num] asScript.

	script
		iconCode: nil;
		icon: ViIcons icons8User64px1Icon hibernate.
	
	self
		assert: 'ViIcons icons8User64px1Icon'
		equals: script iconCode.
		
	script
		icon: nil;
		iconCode: 'ViIcons icons8User64px1Icon'.
	
	self
		assert: ViIcons icons8User64px1Icon
		equals: script icon.