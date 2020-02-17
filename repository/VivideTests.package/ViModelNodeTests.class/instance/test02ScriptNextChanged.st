tests - vivide notifications
test02ScriptNextChanged

	| script model |
	script := [:num | num + 1] asScript.
	
	model := script interpretScriptWith: #(1 2 3 4).
	self assert: #(2 3 4 5) equals: model objects.

	script next: [:num | num * num] asScript.
	self assert: #(2 3 4 5) equals: model objects. "No update yet."

	self processDeferredUpdates.
	self assert: #(4 9 16 25) equals: model objects.