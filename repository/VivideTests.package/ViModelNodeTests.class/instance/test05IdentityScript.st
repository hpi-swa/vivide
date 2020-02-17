tests
test05IdentityScript

	| script model |
	script := [:object | object] asScript.
	model := script interpretScriptWith: #(1 2 3 4).
	
	self assert: #(1 2 3 4) equals: model objects.
	
	model nodesDo: [:node |
		self
			assert: node object notNil;
			assert: node text notNil;
			assert: 0 equals: node nodeCount].