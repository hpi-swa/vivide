as yet unclassified
isPane: pane forNode: node

	| objects |
	objects := node inputForChildren unwrapList asList.
	"(node includesKey: #script) not or: [pane script (node at: #script) asScript"
	^ pane validInputConnections anySatisfy: [:c |
		(c source hasProperty: #paneViewInput)
			and: [c objects hasEqualElements: objects]]