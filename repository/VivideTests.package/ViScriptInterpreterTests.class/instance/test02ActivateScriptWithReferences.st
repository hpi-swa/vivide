tests - script activation
test02ActivateScriptWithReferences

	| farOne farTwo script activation |
	farOne := { [:num | num * 10] -> { #id -> #farOne } } asScript.
	farTwo := { [:num | num * num] -> { #id -> #farTwo } } asScript.
	script := { [:num | num + 1] -> { #before -> #farOne. #after -> #farTwo } } asScript.
	
	farOne adoptOrganization: script organization.
	farTwo adoptOrganization: script organization.

	activation := script activate.
	self
		deny: activation atEnd;
		assert: farOne equals: activation next;
		assert: script equals: activation next;
		assert: farTwo equals: activation next;
		assert: activation atEnd.