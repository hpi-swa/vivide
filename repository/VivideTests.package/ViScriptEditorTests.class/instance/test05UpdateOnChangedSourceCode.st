tests
test05UpdateOnChangedSourceCode

	| script |
	script := [:num | num * 2] asScript.

	editor object: script.
	self assert: script sourceCode equals: editor sourceCode.
	
	script sourceCode: '[:in :out | out addAll: (in select: [:ea | ea even])]'.
	self assert: script sourceCode equals: editor sourceCode.