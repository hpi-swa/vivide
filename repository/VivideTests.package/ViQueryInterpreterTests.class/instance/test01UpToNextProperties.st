tests
test01UpToNextProperties

	| script |
	script := {
		[:number | number * number].
		[:number | #text -> number asString].
		1} asScript.
	
	sut := ViScriptInterpreter on: script using: #(1 2 3 4).
	
	sut upToExtraction.
	self assert: (#(1 4 9 16) hasEqualElements: sut objects).

	sut upToExtraction.
	self assert: (#(1 16 81 256) hasEqualElements: sut objects).