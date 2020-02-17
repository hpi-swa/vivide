tests - single
test07UpdateOnChangedSourceCode

	script := '[:num | num * 2]' asScript.
	editor object: script.

	self assert: script sourceCode equals: editor scriptSourceCode.
	self assert: '[:num | num * 2]' equals: editor visibleSourceCode.
	
	"Change the transformation in the script object."
	script sourceCode: '[:in :out | out addAll: (in select: [:ea | ea even])]'.
	
	"Update is deferred."
	self deny: script sourceCode = editor scriptSourceCode.
	self forceGuiUpdate.
	self assert: script sourceCode equals: editor scriptSourceCode.
	
	"The visible text should have been updated, too."
	self assert: '[:ea | ea even]' equals: editor visibleSourceCode.