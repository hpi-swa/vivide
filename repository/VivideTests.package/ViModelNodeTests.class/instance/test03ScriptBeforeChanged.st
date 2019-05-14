tests - vivide notifications
test03ScriptBeforeChanged

	| script far model |
	script := [:num | num + 1] asScript.
	far := [:num | num * num] asScript.
	far adoptOrganization: script organization.
	
	model := script interpretScriptWith: #(1 2 3 4).
	self assert: #(2 3 4 5) equals: model objects.

	script beforeAdd: far.
	self assert: #(2 3 4 5) equals: model objects. "No update yet."

	self processDeferredUpdates.
	self assert: #(2 5 10 17) equals: model objects.