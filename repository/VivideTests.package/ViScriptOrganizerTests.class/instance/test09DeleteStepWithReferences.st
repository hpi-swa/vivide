tests
test09DeleteStepWithReferences

	| farOne farTwo target organization stepToDelete |
	target := {
		[:num | num + 1] -> { #id -> #one }.
		[:num | num * 10] -> { #id -> #two }.
		[:num| #text -> num asString] -> { #id -> #three }.
	} asScript.
	organization := target organization.
	
	farOne := [:num | num + num] asScript.
	farOne adoptOrganization: organization.
	farOne next: target.
	
	farTwo := [:num | num - num] asScript.
	farTwo adoptOrganization: organization.
	farTwo next: target.
	
	stepToDelete := target.
	self
		assert: 2 equals: (organization referencesToStep: stepToDelete) size;
		assert: ((organization referencesToStep: stepToDelete) includesAllOf: {farOne. farTwo} );
		assert: #one equals: farOne next id;
		assert: #one equals: farTwo next id.
		
	organization deleteStep: stepToDelete.
	self
		assert: 0 equals: (organization referencesToStep: stepToDelete) size;
		assert: #two equals: farOne next id;
		assert: #two equals: farTwo next id.