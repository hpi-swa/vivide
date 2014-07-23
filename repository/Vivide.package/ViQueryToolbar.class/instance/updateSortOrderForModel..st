as yet unclassified
updateSortOrderForModel: aQueryModel
	"Update sort order in all views and give the finder a hint."

	(aQueryModel sortByBlock
		ifNil: []
		ifNotNil: [:b | [:node1 :node2 |
			"unboxing property nodes to objects - see query model for details"
			b value: (node1 at: #object) value: (node2 at: #object)]])
	in: [:autoSortBlock |	
		secondaryList autoSortBlock: autoSortBlock].