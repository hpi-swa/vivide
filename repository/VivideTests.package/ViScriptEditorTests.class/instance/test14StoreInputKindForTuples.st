as yet unclassified
test14StoreInputKindForTuples

	| script view editor |
	script := [:num | {Morph new. num} asTuples] asScript.
	view := ViArtifactListView2 new.
	view objects: { #(1 2 3 4). script}.
	view artifactContainers last addArtifact.

	editor := view artifactContainers last.
	editor visibleSourceCode: '[:morph :num | num * 2]'.
	editor acceptSourceCode.
	self assert: #(nil nil) equals: (editor object valueOfProperty: #inputKind).

	view close.