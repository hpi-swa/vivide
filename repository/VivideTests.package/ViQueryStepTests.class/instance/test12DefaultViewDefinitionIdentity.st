tests
test12DefaultViewDefinitionIdentity

	| q |
	q := [:morph | morph color] asScript.
	
	self flag: #todo. "mt: Fetch defaultView from some local profile and check against that. Maybe move this test to ViScriptTemplateTests or interpreter tests."