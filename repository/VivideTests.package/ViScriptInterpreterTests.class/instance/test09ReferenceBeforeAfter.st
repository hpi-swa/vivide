tests - references and stack
test09ReferenceBeforeAfter

	| farOne farTwo script interpreter |
	farOne := { [:num | num * num] -> { #id -> #farOne } } asScript.
	farTwo := { [:num | num * 10] -> { #id -> #farTwo } } asScript.
	script := { [:num | num + 1] -> { #before -> #(farOne). #after -> #(farTwo) } } asScript.
	
	farOne adoptOrganization: script organization.
	farTwo adoptOrganization: script organization.
	
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).
	interpreter upToEnd.
	
	self assert: #(20 50 100) equals: interpreter objects asArray.