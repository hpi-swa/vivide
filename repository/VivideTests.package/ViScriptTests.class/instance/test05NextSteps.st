tests - enumeration
test05NextSteps
	
	| script |
	script := {
		[:num | num + 1].
		[:num | #text -> num asString].
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.

	self
		assert: (script steps first: 2)
		equals: script nextSteps;
		assert: (script steps last: 2)
		equals: script next next nextSteps.
		
	"A single property extraction will be sufficient."
	self
		assert: {script next}
		equals: script next nextSteps.