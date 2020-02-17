tests - copying & serialization
test08ResolveDefinitionIdentiferLazily

	| script definition |
	script := [:num | num * num] asScript.
	definition := script instVarNamed: #definition.
	definition id: #notYetResolved.
	script setDefinition: #notYetResolved.
	
	self assert: script definition == definition.