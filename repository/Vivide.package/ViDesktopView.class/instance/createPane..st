as yet unclassified
createPane: node

	| pane |
	pane := ViPane new.
	pane script: { 
			(node at: #script ifAbsent: [#defaultProperties])
				-> {#view -> (node at: #view ifAbsent: [ViExplorerView])}
	} asScript.

	self
		objects: node inputForChildren
		for: pane.

	^ pane