tests
test04StepsWithLabel

	| q d |
	q := ViQueryStep collect: '[:morph | morph submorphs]'.
	q organization: sut; register.	
	
	self assert: sut stepsWithLabel isEmpty.
	
	q label: 'test04StepsWithLabel'.
	self assert: (sut stepsWithLabel hasEqualElements: {q}).