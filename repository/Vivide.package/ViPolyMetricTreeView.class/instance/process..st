as yet unclassified
process: node

	self content removeAllMorphs.
	node nodes do: [:n | 
		| item |
		item := ViPolyMetricTreeItem new.
		self configureItem: item forNode: n. 
		self addItemsForNode: n parent: item.
		self content addMorphBack: item].