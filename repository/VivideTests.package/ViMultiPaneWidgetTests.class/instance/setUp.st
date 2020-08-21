running
setUp

	super setUp.
	
	ViActiveScriptOrganizer
		value: organization
		during: [
			pane := ViPane new
				script: [:num | num * 2] asScript;
				objects: #(1 2 3 4);
				yourself].
		
	sut := pane view.