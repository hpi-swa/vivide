as yet unclassified
createPaneFor: node

	^ ViPane new
		currentQuery: { #defaultProperties -> {#view -> (node at: #view ifAbsent: [ViExplorerView])}} asScript;
		objects: {node object};
		hResizing: #spaceFill;
		yourself