updating
process: root

	self content removeAllMorphs.
	 
	max := root nodes
		ifEmpty: [0]
		ifNotEmpty: [:nodes | (nodes collect: [:node | (node at: #value ifAbsent: [0]) asNumber]) max].
	
	self content addMorphBack: self createColumnForScale.
	
	root nodes do: [:node |
		self content addMorphBack: (self createColumnForNode: node)].
	
	self updateScale: self content extent.

	self zoomFit.