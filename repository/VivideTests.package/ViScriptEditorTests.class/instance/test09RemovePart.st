tests
test09RemovePart

	| script view parts |
	view := ViArtifactListView2 new.

	script := {
		[:num | num * 2].
		[:num | num + num].
		[:num | num + 2].
	} asScript.
	parts := script steps.

	view openArtifacts: script steps.
	
	self assert: script next == parts second.
	view artifactContainers second close.
	self assert: script next == parts third.
		
	view close.
	self assert: script next notNil.