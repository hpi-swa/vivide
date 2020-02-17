tests - single
test02ChangeVisibleSourceCode
	
	script := [:num | num] asScript.
	self assert: (#(1 2 3) hasEqualElements: (script interpretScriptWith: #(1 2 3)) objects).
	
	editor object: script.
	editor visibleSourceCode: '[:num | num * num]'.
	editor acceptSourceCode.
	self assert: (#(1 4 9) hasEqualElements: (script interpretScriptWith: #(1 2 3)) objects).