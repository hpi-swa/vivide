tests - vivide notifications
test04ScriptAfterChanged

	| script far model |
	script := [:num | num + 1] asScript.
	far := [:num | num * num] asScript.
	far adoptOrganization: script organization.
	
	model := script interpretScriptWith: #(1 2 3 4).
	self assert: #(2 3 4 5) equals: model objects.

	script afterAdd: far.
	self assert: #(2 3 4 5) equals: model objects. "No update yet."

	self processDeferredUpdates.
	self assert: #(4 9 16 25) equals: model objects.