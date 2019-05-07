tests - single
test19RemoveScriptPropertyByAccident

	script setProperty: #color toValue: #yellow.
	self assert: (script hasProperty: #color).
	
	editor goUpToTop.
	editor visibleSourceCode: script sourceCode, '-> { }'.
	editor acceptSourceCode.
	
	"Should still be there!"
	self assert: (script hasProperty: #color).	