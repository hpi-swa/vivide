tests - bindings
test04BindForScriptLookup
	
	| far near interpreter |
	self assert: #far asScript isNil.
	
	far := { [:num | num * num] -> { #id -> #far } } asScript.
	
	self flag: #todo.
	"near := [:num | #far asScript process: {num}] asScript."
	near := [:num | (ViScriptTemplate
		lookupSymbol: #far startingAt: thisStep organization) process: {num}] asScript.
	
	far adoptOrganization: near organization.
	interpreter := ViScriptInterpreter on: near using: #(1 2 3).
	interpreter upToEnd.
	
	self assert: #(1 4 9) equals: interpreter objects asArray.