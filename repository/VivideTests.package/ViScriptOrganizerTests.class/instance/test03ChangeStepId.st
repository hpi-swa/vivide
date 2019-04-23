tests
test03ChangeStepId

	| step |
	step := { [:num | num] -> { #id -> #test } } asScript.
	organization := step organization. "Use the step's current organization for this test."

	self
		assert: step equals: (organization stepById: #test);
		assert: (organization stepById: #testChanged) isNil;
		assert: #test equals: step id.
	organization changeStepIdFrom: #test to: #testChanged.
	self
		assert: step equals: (organization stepById: #testChanged);
		assert: (organization stepById: #test) isNil;
		assert: #test equals: step id. "Still not propagated!"	