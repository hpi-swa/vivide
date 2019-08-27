tests - single - debugging
test03LoadPreviousVersion
	
	script := [:num | num] asScript.	
	editor object: script.
	self assert: '[:num | num]' equals: editor visibleSourceCode.
	
	editor visibleSourceCode: '[:num | num * num]'.
	editor acceptSourceCode.
	self assert: '[:num | num * num]' equals: editor visibleSourceCode.	

	editor visibleSourceCode: '[:num | num * num + 1]'.
	editor acceptSourceCode.
	self assert: '[:num | num * num + 1]' equals: editor visibleSourceCode.	

	editor loadPreviousVersion.
	self forceGuiUpdate.
	self assert: '[:num | num * num]' equals: editor visibleSourceCode.
	
	editor loadPreviousVersion.
	self forceGuiUpdate.
	self assert: '[:num | num]' equals: editor visibleSourceCode.