tests - references and stack
test06ReferenceBefore

	| far script interpreter |
	far := { [:num | num * num] -> { #id -> #far } } asScript.
	script := { [:num | num + 1] -> { #before -> #(far) } } asScript.
	script adoptOrganization: far organization.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).
	interpreter upToEnd.
	
	self assert: #(2 5 10) equals: interpreter objects asArray.