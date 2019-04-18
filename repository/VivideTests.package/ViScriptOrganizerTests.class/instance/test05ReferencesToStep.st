tests
test05ReferencesToStep

	| one two step refs |
	one := {
		[:num | num * num].
		[:num | #text -> num asString].
	} asScript.
	step := one next.
	two := step asReference.
	
	one adoptOrganization: organization.
	two adoptOrganization: organization.
	
	refs := organization referencesToStep: step.
	
	self
		assert: 2 equals: refs size;
		assert: (refs includes: one);
		assert: (refs includes: two).