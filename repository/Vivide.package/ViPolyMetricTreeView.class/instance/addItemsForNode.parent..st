as yet unclassified
addItemsForNode: node parent: item

	node nodes do: [:n | 
		| newItem |
		newItem := ViPolyMetricTreeItem new.
		
		n disconnectSignal: #modelReset from: self selector: #triggerReset. 
		self connect: n signal: #modelReset toSelector: #triggerReset.
		
		self configureItem: newItem forNode: n.
		newItem lineWeight: ((node at: #edge ifAbsent: [0]) / 5 max: 1) truncated.
		
		self addItemsForNode: n parent: newItem.
		item addChild: newItem].