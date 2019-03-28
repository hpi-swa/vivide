updating
process: root

	self content removeAllMorphs.
	 
	max := root nodes
		ifEmpty: [0]
		ifNotEmpty: [:nodes | (nodes collect: [:node | (node at: #value ifAbsent: [-9999]) asNumber]) max].
	min := root nodes
		ifEmpty: [0]
		ifNotEmpty: [:nodes | (nodes collect: [:node | (node at: #value ifAbsent: [9999]) asNumber]) min].
	
	self content
		addMorphBack: self createColumnForScale;
		addMorphBack: self createInvisibleColumnForMax.
	
	root nodes do: [:node |
		self content addMorphBack: (self createColumnForNode: node)].
	
	self updateScale: self content extent.

	self zoomFit.
	
	animateBars ifTrue: [self animateGrowingBars].