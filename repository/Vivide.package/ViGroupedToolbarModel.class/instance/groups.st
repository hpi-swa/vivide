item model - hierarchy
groups
	
	self flag: #useCache. "mt: Should performance be optimized here?"
	^ (self objects collect: [:node |
			node at: #group ifAbsent: [#objects]]) asSet asOrderedCollection
		sorted: [:group1 :group2 | group1 <= group2]