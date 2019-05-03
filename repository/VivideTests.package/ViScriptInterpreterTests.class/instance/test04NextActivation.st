tests - script activation
test04NextActivation

	| farOne farTwo script activation |
	farOne := { [:num | num * 10] -> { #id -> #farOne } } asScript.
	farTwo := { [:num | num * num] -> { #id -> #farTwo } } asScript.
	script := { [:num | num + 1] -> { #before -> #farOne. #after -> #farTwo } } asScript.
	
	farOne adoptOrganization: script organization.
	farTwo adoptOrganization: script organization.

	activation := script activate.
	
	self
		assert: activation nextActivation ~= activation; "farOne"
		assert: activation nextActivation = activation; "thisStep"
		assert: activation nextActivation ~= activation. "farTwo"