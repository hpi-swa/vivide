tests - references and stack
test05ReferenceAfter

	| far script interpreter |
	far := { [:num | num * num] -> { #id -> #far } } asScript.
	script := { [:num | num + 1] -> { #after -> #(far) } } asScript.
	script adoptOrganization: far organization.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3).
	interpreter upToEnd.
	
	self assert: #(4 9 16) equals: interpreter objects asArray.