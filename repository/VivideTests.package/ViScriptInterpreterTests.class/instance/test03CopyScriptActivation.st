tests - script activation
test03CopyScriptActivation

	| farOne farTwo script activation copy |
	farOne := { [:num | num * 10] -> { #id -> #farOne } } asScript.
	farTwo := { [:num | num * num] -> { #id -> #farTwo } } asScript.
	script := { [:num | num + 1] -> { #before -> #farOne. #after -> #farTwo } } asScript.
	
	farOne adoptOrganization: script organization.
	farTwo adoptOrganization: script organization.

	activation := script activate.
	activation next.
	
	copy := activation copy.

	self
		assert: script equals: activation next;
		assert: script equals: copy next.