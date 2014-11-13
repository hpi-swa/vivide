as yet unclassified
detectDeepestBlockNode: currentNode last: blockNode

	| nextBlock |
	nextBlock := blockNode.
	currentNode children do: [:node |
		nextBlock := self
			detectDeepestBlockNode: node
			last: (node isBlock ifTrue: [node] ifFalse: [nextBlock]).
		nextBlock ~= blockNode
			ifTrue: [^ nextBlock]].
	
	^ nextBlock