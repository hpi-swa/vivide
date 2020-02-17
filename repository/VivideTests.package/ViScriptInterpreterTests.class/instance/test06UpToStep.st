tests
test06UpToStep

	| script interpreter |
	script := {
		[:number | number * number].
		[:number | { #text -> number asString. #object -> (number + number) }].
	} asScript.
	interpreter := ViScriptInterpreter on: script using: #(1 2 3 4).
	
	interpreter upToStep: script.
	self
		assert: (#(1 4 9 16) hasEqualElements: interpreter objects);
		deny: interpreter atEnd.

	interpreter upToStep: script next.
	self
		assert: (#(2 8 18 32) hasEqualElements: interpreter objects);
		assert: interpreter atEnd.