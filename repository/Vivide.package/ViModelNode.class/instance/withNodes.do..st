as yet unclassified
withNodes: someRawNodes do: block
	"See #collectNodes:."

	self flag: #refactor.
	self nodes with: someRawNodes do: [:node :rawNode |
		block value: rawNode first value: node.
		node withNodes: rawNode second do: block].