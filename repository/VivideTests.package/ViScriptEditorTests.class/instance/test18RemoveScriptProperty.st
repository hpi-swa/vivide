tests - single
test18RemoveScriptProperty

	script setProperty: #color toValue: #yellow.
	self assert: (script hasProperty: #color).
	
	editor goUpToTop.
	editor visibleSourceCode: script sourceCode, '-> { #color -> nil }'.
	editor acceptSourceCode.
	self deny: (script hasProperty: #color).	