tests - multiple
test12InputKind

	| script view editor |
	script := [:num | Morph new] asScript.
	view := ViArtifactListView2 new.

	view objects: { #(1 2 3 4). script}.

	editor := view artifactContainers last.
	self assert: {SmallInteger} equals: editor inputKind.

	editor addArtifact.
	editor := view artifactContainers last.
	self assert: {Morph} equals: editor inputKind.
	
	editor visibleSourceCode: '[:morph | morph color]'.
	editor acceptSourceCode.
	self deny: (editor object hasProperty: #inputKind).

	view close.