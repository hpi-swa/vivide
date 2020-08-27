as yet unclassified
createPane: node

	^ ViPane
		forScript: { 
			(node at: #script ifAbsent: [#defaultProperties])
				-> {#view -> (node at: #view ifAbsent: [ViExplorerView])}
		} asScript
		withObjects: node inputForChildren unwrapList asList