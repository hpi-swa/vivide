tests - multiple
test09RemovePart

	| script view parts |
	view := ViArtifactListView2 new.

	script := {
		[:num | num * 2].
		[:num | num + num].
		[:num | num + 2].
	} asScript.
	parts := script steps.

	self assert: script next == parts second.
	view openArtifacts: script steps.
	self assert: script next == parts second.
	
	"1) Single close does change the steps."
	self assert: 3 equals: view artifactContainers first allSteps size.
	view artifactContainers second close.
	self assert: 2 equals: view artifactContainers first allSteps size.
	self assert: script next == parts third.
		
	"Full close does not change the steps."
	view close.
	self assert: script next notNil.