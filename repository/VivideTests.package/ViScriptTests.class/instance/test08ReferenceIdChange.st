tests - organization
test08ReferenceIdChange
	"How to point to another script after the current one was executed?"
	
	| farOne farTwo script |
	farOne := { [:num | num * num] -> { #id -> #one } } asScript.
	farTwo := { [:num | num / num] -> { #id -> #two } } asScript.
	farTwo adoptOrganization: farOne organization.

	"Indirect #after configuration via #asReference."
	script := farOne asReference.	
	self
		assert: #one equals: script after first;
		assert: farOne equals: script afterScripts first.
	
	"Direct #after configuration:"
	script after: farTwo.
	self
		assert: #two equals: script after first;
		assert: farTwo equals: script afterScripts first.