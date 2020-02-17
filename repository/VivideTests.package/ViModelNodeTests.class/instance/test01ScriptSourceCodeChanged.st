tests - vivide notifications
test01ScriptSourceCodeChanged

	| script model |
	script := [:num | num + 1] asScript.
	
	model := script interpretScriptWith: #(1 2 3 4).
	self assert: #(2 3 4 5) equals: model objects.

	script sourceCode: (ViScriptTemplate expandString: '[:num | num - 1]').
	self assert: #(2 3 4 5) equals: model objects. "No update yet."

	self processDeferredUpdates.
	self assert: #(0 1 2 3) equals: model objects.