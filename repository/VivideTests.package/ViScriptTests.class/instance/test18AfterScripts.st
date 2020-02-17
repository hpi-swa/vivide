tests - enumeration
test18AfterScripts

	| script farOne farTwo |
	farOne := {
		[:num | num + 1] -> { #id -> #farOne }.
		[:num | #text -> num asString].
	} asScript.

	farTwo := {
		[:num | num + 1] -> { #id -> #farTwo }.
		[:num | #text -> num asString].
	} asScript.
	farTwo adoptOrganization: farOne organization.

	ViActiveScriptOrganizer value: farOne organization during: [
		
		script := {
			[:num | #text -> num asString ] -> { #after -> #(farOne farTwo) }.
		} asScript.
		script adoptOrganization: farOne organization.
		
		self
			assert: {farOne. farTwo}
			equals: script afterScripts.
			
	].