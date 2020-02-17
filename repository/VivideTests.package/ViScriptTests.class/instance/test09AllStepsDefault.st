tests - enumeration
test09AllStepsDefault
	"We should have access to #defaultProperties via #nextSteps."

	| script default |
	script := {
		[:num | num + 1].
		[:num | #text -> num asString].
		[:num | num * num].
	} asScript.

	default := { [:object | #text -> ('test ', object asString)] -> { #id -> #defaultProperties }} asScript.
	default adoptOrganization: script organization.
	
	self
		assert: script steps, {default}
		equals: script allSteps.