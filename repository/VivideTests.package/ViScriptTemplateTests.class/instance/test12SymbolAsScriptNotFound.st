tests - list and script conversion
test12SymbolAsScriptNotFound

	self
		deny: #someNotExistingScript asScript isScript;
		assert: #someNotExistingScript asScript isNil;
		assert: #someNotExistingScript asScript asList isEmpty.
		
	self
		shouldnt: [#someNotExistingScript asScript] raise: Error;
		should: [#someNotExistingScript asScript] raise: Notification;		
		should: [#someNotExistingScript asScript] raise: ViScriptNotFound.