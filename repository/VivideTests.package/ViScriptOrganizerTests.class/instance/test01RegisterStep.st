tests
test01RegisterStep

	| step |
	step := { [:num | num] -> { #id -> #test } } asScript.
	self
		deny: (organization stepById: #test) = step;
		deny: step organization = organization;
		deny: (organization hasStep: step).
	organization registerStep: step.
	self
		assert: (organization stepById: #test) = step;
		deny: step organization = organization; "Still not propagated!"
		assert: (organization hasStep: step).