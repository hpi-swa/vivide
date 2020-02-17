tests - enumeration
test06NextStepsDefault
	"We should have access to #defaultProperties via #nextSteps."
	
	| script default |
	script := [:num | num * num] asScript.
	default := { [:object | #text -> ('test ', object asString)] -> { #id -> #defaultProperties }} asScript.
	default adoptOrganization: script organization.

	self
		assert: script steps, {default}
		equals: script nextSteps.