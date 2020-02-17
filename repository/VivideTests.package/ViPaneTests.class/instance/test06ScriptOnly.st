tests - construction
test06ScriptOnly

	| pane |
	pane := ViPane new script: [:ea | ea] asScript.
	
	self
		assert: pane objects isEmpty;
		assert: pane allResults isEmpty.
	
	pane script: [42] asScript.

	self
		assert: pane objects isEmpty;
		assert: #(42) equals: pane allResults.