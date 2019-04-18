tests
test07StepsWithLabel

	| step |
	step := [:morph | morph submorphs] asScript.
	organization := step organization.	
	
	self assert: organization stepsWithLabel isEmpty.
	step label: 'test04StepsWithLabel'.
	self assert: (organization stepsWithLabel hasEqualElements: {step}).