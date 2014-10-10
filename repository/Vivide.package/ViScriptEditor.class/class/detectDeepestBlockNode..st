as yet unclassified
detectDeepestBlockNode: node
	"Breadth-first search for the last block, which is the deepest. Should work..."

	| left block |
	left := node children asOrderedCollection.
	block := nil.
	[left notEmpty] whileTrue: [
		left removeFirst in: [:n |
			n isBlock ifTrue: [block := n].
			left addAll: n children]].
	^ block