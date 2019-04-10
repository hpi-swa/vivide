tests - multiple
test13InputKindForTuples

	| script view editor |
	script := [:num | {Morph new. num} asTuples] asScript.
	view := ViArtifactListView2 new.

	view objects: { #(1 2 3 4). script}.

	editor := view artifactContainers last.
	self assert: {SmallInteger} equals: editor inputKind.

	editor addArtifact.
	editor := view artifactContainers last.
	self assert: {Morph. SmallInteger} equals: editor inputKind.
	
	view close.