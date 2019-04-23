tests - script definition
test03SyntaxError

	| definition |
	definition := ViScriptDefinition new
		sourceCode: '[:m | .'; "Invalid source code."
		yourself.
		
	self should: [definition block] raise: SyntaxErrorNotification.