tests - list and script conversion
test05SymbolAsScript

	| script |
	script := [:num | num * num] asScript.
	script id: #test05.

	self deny: #test05 asScript isScript.

	ViActiveScriptOrganizer
		value: script organization
		during: [self assert: #test05 asScript isScript].