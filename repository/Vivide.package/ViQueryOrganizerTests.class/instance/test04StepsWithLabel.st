tests
test04StepsWithLabel

	| q |
	q := [:morph | morph submorphs] asScript.
	sut := q organization.	
	
	self assert: sut stepsWithLabel isEmpty.
	
	q label: 'test04StepsWithLabel'.
	self assert: (sut stepsWithLabel hasEqualElements: {q}).