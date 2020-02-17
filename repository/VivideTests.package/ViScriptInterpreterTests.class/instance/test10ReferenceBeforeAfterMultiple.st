tests - references and stack
test10ReferenceBeforeAfterMultiple

	| farOne farTwo script interpreter |
	farOne := { [:num | num * num] -> { #id -> #farOne } } asScript.
	farTwo := { [:num | num * 10] -> { #id -> #farTwo } } asScript.
	script := { [:num | num + 1] -> { #before -> #(farOne farTwo). #after -> #(farTwo farOne) } } asScript.
	
	farOne adoptOrganization: script organization.
	farTwo adoptOrganization: script organization.
	
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).
	interpreter upToEnd.
	
	self assert: #(12100 168100 828100) equals: interpreter objects asArray.