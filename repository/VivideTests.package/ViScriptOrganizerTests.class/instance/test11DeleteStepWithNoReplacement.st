tests
test11DeleteStepWithNoReplacement

	| far script organization stepToDelete |
	far := {
		[:num | num + 1] -> { #id -> #one }.
	} asScript.
	organization := far organization.
	
	script := { 
		[:num | num * num] -> { #before -> #one. #after -> #one }.
		[:num | #text -> num asString].
	} asScript.
	script adoptOrganization: organization.
		
	stepToDelete := far.		
	organization deleteStep: stepToDelete.
	self
		assert: script beforeScripts isEmpty;
		assert: script afterScripts isEmpty.

	stepToDelete := script next.		
	organization deleteStep: stepToDelete.
	self assert: script next isNil.