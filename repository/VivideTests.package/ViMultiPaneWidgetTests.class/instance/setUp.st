running
setUp

	super setUp.
	
	ViActiveOrganizer
		value: organization
		during: [
			pane := ViPane new
				currentQuery: [:num | num * 2] asScript;
				objects: #(1 2 3 4);
				yourself].
			
	editor := ViSinglePaneEditor new
		pane: pane;
		wrapPaneIntoMultiPaneWidget;
		yourself.
	editor topLeft: 0@0; fullBounds.
	
	sut := editor pane view.