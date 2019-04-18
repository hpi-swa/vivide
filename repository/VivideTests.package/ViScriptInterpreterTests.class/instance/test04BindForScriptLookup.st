tests - bindings
test04BindForScriptLookup
	
	| far near interpreter |
	far := { [:num | num * num] -> { #id -> #far } } asScript.
	near := [:num | #far asScript process: {num}] asScript.
	far adoptOrganization: near organization.
	interpreter := ViScriptInterpreter on: near using: #(1 2 3).
	interpreter upToEnd.
	
	self assert: #(1 4 9) equals: interpreter objects asArray.