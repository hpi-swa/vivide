tests
test05FlattenCollections

	| script |
	script := {
		[:number | number]. "This will get code appended to flatten collections."
		[:number | #text -> number asString]. "This will not flatten collections."} asScript.
	
	sut := ViQueryInterpreter on: script using: #((1 2) 3 (4 5)).
	
	sut upToNextProperties.
	self assert: 5 equals: sut objects size.