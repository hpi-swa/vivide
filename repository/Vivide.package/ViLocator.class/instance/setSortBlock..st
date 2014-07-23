sorting
setSortBlock: aBlock
	"Convenience method to unwrap nodes to objects."

	resultList autoSortBlock: [:node1 :node2 |
		aBlock value: (node1 at: #object) value: (node2 at: #object)].