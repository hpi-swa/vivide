tests - enumeration
test08AllSteps

	| script |
	script := {
		[:num | num + 1].
		[:num | #text -> num asString].
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	
	self
		assert: script steps
		equals: script allSteps.