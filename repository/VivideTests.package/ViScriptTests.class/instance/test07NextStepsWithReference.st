tests - enumeration
test07NextStepsWithReference

	| script far |
	far := {
		[:num | num + 1] -> { #id -> #far }.
		[:num | num * 10].
	} asScript.

	ViActiveScriptOrganizer value: far organization during: [
		
		script := {
			#far.
			[:num | #text -> num asString ].
		} asScript.
		script adoptOrganization: far organization.
		
		self
			assert: (script steps first: 1), far steps, (script steps last: 1)
			equals: script nextSteps.
	].