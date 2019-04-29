tests - organization
test08ReferenceIdChange
	
	| farOne farTwo script |
	farOne := { [:num | num * num] -> { #id -> #one } } asScript.
	farTwo := { [:num | num / num] -> { #id -> #two } } asScript.
	farTwo adoptOrganization: farOne organization.

	script := farOne asReference.	
	self
		assert: #one equals: script referenceId;
		assert: farOne equals: script reference.
	
	script reference: farTwo.
	self
		assert: #two equals: script referenceId;
		assert: farTwo equals: script reference.