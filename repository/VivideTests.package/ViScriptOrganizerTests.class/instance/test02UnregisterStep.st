tests
test02UnregisterStep

	| step |
	step := { [:num | num] -> { #id -> #test } } asScript.
	organization := step organization. "Use the step's current organization for this test."
	
	self
		assert: (organization stepById: #test) = step;
		assert: step organization = organization;
		assert: (organization hasStep: step).
	organization unregisterStep: step.
	self
		deny: (organization stepById: #test) = step;
		assert: step organization = organization; "Still not propagated!"
		deny: (organization hasStep: step).