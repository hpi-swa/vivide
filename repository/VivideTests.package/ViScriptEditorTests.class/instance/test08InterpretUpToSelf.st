tests - multiple
test08InterpretUpToSelf

	| script view editor |
	view := ViArtifactListView2 new.

	script := {
		[:num | num * 2].
		[:num | num + 2].
		[:num | #text -> num printString]
	} asScript.

	view objects: {#(1 2 3 4)}, script steps.
	
	self assert: 4 equals: view artifactContainers size.
	
	editor := view artifactContainers second.
	editor interpretUpToSelf in: [:interpreter |
		self assert: interpreter notNil.
		self assert: #(2 4 6 8) equals: interpreter objects asArray].

	editor := view artifactContainers third.
	editor interpretUpToSelf in: [:interpreter |
		self assert: interpreter notNil.
		self assert: #(4 6 8 10) equals: interpreter objects asArray].
	
	view close.