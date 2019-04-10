tests - single
test05UpdateOnChangedSourceCode

	| script |
	script := [:num | num * 2] asScript.

	editor object: script.
	self assert: script sourceCode equals: editor scriptSourceCode.
	
	script sourceCode: '[:in :out | out addAll: (in select: [:ea | ea even])]'.
	
	"Update is deferred."
	self deny: script sourceCode = editor scriptSourceCode.
	ActiveWorld doOneSubCycle.	
	self assert: script sourceCode equals: editor scriptSourceCode.