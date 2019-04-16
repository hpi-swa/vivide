tests
test04DuplicateObjects

	| script |
	script := {
		[:number | number * number].
		[:number | #text -> number asString]} asScript.
	
	sut := ViScriptInterpreter on: script using: #(1 1 1 1).
	
	sut upToExtraction.
	self assert: 4 equals: sut createNodes size.