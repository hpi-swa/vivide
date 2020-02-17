tests
test10DeleteStepWithBeforeAfter

	| far script organization stepToDelete |
	far := {
		[:num | num + 1] -> { #id -> #one }.
		[:num | num * 10] -> { #id -> #two }.
		[:num| #text -> num asString] -> { #id -> #three }.
	} asScript.
	organization := far organization.
	
	script := { [:num | num * num] -> { #before -> #one. #after -> #one } } asScript.
	script adoptOrganization: organization.
		
	stepToDelete := far.
	self
		assert: 1 equals: (organization referencesToStep: stepToDelete) size;
		assert: script equals: (organization referencesToStep: stepToDelete) first;
		assert: #one equals: script beforeScripts first id;
		assert: #one equals: script afterScripts first id.
		
	organization deleteStep: stepToDelete.
	self
		assert: 0 equals: (organization referencesToStep: stepToDelete) size;
		assert: #two equals: script beforeScripts first id;
		assert: #two equals: script afterScripts first id.