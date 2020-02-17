tests - references and stack
test07ReferenceAfterMultiple

	| farOne farTwo script interpreter |
	farOne := { [:num | num * num] -> { #id -> #farOne } } asScript.
	farTwo := { [:num | num * 10] -> { #id -> #farTwo } } asScript.
	script := { [:num | num + 1] -> { #after -> #(farOne farTwo) } } asScript.
	
	farOne adoptOrganization: script organization.
	farTwo adoptOrganization: script organization.
	
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).
	interpreter upToEnd.
	
	self assert: #(40 90 160) equals: interpreter objects asArray.