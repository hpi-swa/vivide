as yet unclassified
collectNodes: block

	^ self nodes collect: [:node |
		{ block value: node.
		node collectNodes: block }]