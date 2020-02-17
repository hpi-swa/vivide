tests - list and script conversion
test15ListAsScriptNotFoundError

	self
		shouldnt: [#someNotExistingScript asScript] raise: Error;
		should: [{ #someNotExistingScript } asScript] raise: Error.