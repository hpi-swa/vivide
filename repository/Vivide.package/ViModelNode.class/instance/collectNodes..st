as yet unclassified
collectNodes: block

	self flag: #refactor.
	^ self nodes collect: [:node |
		{ block value: node.
		node collectNodes: block }]