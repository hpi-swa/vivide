updating
process: root

	self content removeAllMorphs.
	 
	max := (root nodes collect: [:node | node at: #value ifAbsent: [0]]) max.
	
	root nodes do: [:node |
		self content addMorphBack: (self createColumnForNode: node)].
	
	self updateScale: self content extent.