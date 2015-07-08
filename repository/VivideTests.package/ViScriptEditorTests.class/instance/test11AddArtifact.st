tests
test11AddArtifact

	| script view editor |
	script := [:num | num * 2] asScript.
	view := ViArtifactListView2 new.
	view addObject: script.
	editor := view artifactContainers last.
	
	"1) Append"
	self assert: script next isNil.
	editor addArtifact.
	self assert: script next notNil.
	self assert: script organization == script next organization.

	"2) Insert"
	script next in: [:prev |
		self flag: #ugly. "mt: Why do we have to grab the keyboard here explicitely? This might be done within #addArtifact..."
		editor grabKeyboard; addArtifact.
		self assert: script next ~~ prev.
		self assert: prev == view artifactContainers second object next].

	view close.