tests - list and script conversion
test12SymbolAsScriptNotFound

	self
		shouldnt: [#someNotExistingScript asScript] raise: Error;
		deny: #someNotExistingScript asScript isScript.

	self
		assert: #someNotExistingScript asScript isNil;
		assert: #someNotExistingScript asScript asList isEmpty.