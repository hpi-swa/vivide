tests - multiple
test06InterpretUpToSelf

	script := {
		[:num | num * 2].
		[:num | num + 2].
		[:num | #text -> num printString]
	} asScript.
	self setUpWindow: #(1 2 3 4).
	
	self assert: 4 equals: window objects size.
	
	editor := window artifactContainers second.
	editor interpretUpToSelf in: [:interpreter |
		self assert: interpreter notNil.
		self assert: #(2 4 6 8) equals: interpreter objects asArray].

	editor := window artifactContainers third.
	editor interpretUpToSelf in: [:interpreter |
		self assert: interpreter notNil.
		self assert: #(4 6 8 10) equals: interpreter objects asArray].