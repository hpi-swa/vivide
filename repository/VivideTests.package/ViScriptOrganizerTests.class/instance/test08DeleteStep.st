tests
test08DeleteStep
	"Removes all references to that step and unregisters it."

	| script organization stepToDelete |
	script := {
		[:num | num + 1] -> { #id -> #one }.
		[:num | num * 10] -> { #id -> #two }.
		[:num| #text -> num asString] -> { #id -> #three }.
	} asScript.
	organization := script organization.
	
	stepToDelete := script next.
	self
		assert: #two equals: stepToDelete id;
		assert: stepToDelete isRegistered;
		assert: script equals: (organization referencesToStep: stepToDelete) first.
		
	organization deleteStep: stepToDelete.
	self
		assert: #three equals: script next id;
		deny: stepToDelete isRegistered;
		assert: 0 equals: (organization referencesToStep: stepToDelete) size.