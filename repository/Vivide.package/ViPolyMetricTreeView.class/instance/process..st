as yet unclassified
process: node

	self content removeAllMorphs.
	
	root := node.
	
	node nodes do: [:n | 
		| item |
		item := ViPolyMetricTreeItem new.
		
		n disconnectSignal: #modelReset from: self selector: #triggerReset.
		self connect: n signal: #modelReset toSelector: #triggerReset.
		
		self configureItem: item forNode: n. 
		self addItemsForNode: n parent: item.
		self content addMorphBack: item].