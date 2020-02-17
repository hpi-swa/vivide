tests - vivide notifications
test05ScriptExtractionChanged

	| script model |
	script := [:num | #text -> num] asScript.
	
	model := script interpretScriptWith: #(1 2 3 4).
	self assert: #(1 2 3 4) equals: model objects.

	script setProperty: #isProperty toValue: false.
	self assert: #(1 2 3 4) equals: model objects. "No update yet."

	self processDeferredUpdates.
	self
		assert:  {{#text->1 . #object->1} . {#text->2 . #object->2} . {#text->3 . #object->3} . {#text->4 . #object->4}}
		equals: model objects.