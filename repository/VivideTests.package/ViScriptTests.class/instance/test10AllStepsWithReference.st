tests - enumeration
test10AllStepsWithReference

	| script far |
	far := {
		[:num | num + 1] -> { #id -> #far }.
		[:num | #text -> num asString].
	} asScript.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			#far.
			[:num | num * num].
			[:num | #text -> num asString ].
		} asScript.
		script adoptOrganization: far organization.
		
		self
			assert: (script steps first: 1), far steps, (script steps last: 2)
			equals: script allSteps.
		
		"Next steps will stop after the referenced property extraction."
		self deny: (script nextSteps hasEqualElements: script allSteps).
	].