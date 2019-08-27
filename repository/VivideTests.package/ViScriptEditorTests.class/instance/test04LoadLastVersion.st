tests - single - debugging
test04LoadLastVersion
	
	script := [:num | num] asScript.	
	editor object: script.
	self assert: '[:num | num]' equals: editor visibleSourceCode.
	
	editor visibleSourceCode: '[:num | num * num]'.
	editor acceptSourceCode.
	self assert: '[:num | num * num]' equals: editor visibleSourceCode.	

	editor loadPreviousVersion.	

	editor loadLastVersion.
	self forceGuiUpdate.
	self assert: '[:num | num * num]' equals: editor visibleSourceCode.

	editor loadLastVersion.
	self forceGuiUpdate.
	self assert: '[:num | num]' equals: editor visibleSourceCode.

	editor loadLastVersion.
	self forceGuiUpdate.
	self assert: '[:num | num * num]' equals: editor visibleSourceCode.