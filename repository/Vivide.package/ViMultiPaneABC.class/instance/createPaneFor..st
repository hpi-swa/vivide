as yet unclassified
createPaneFor: node

	^ ViPane new
		script: { #defaultProperties -> {#view -> (node at: #view ifAbsent: [ViExplorerView])}} asScript;
		objects: {node object};
		hResizing: #spaceFill;
		yourself