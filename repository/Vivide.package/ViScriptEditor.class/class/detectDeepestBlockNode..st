support
detectDeepestBlockNode: node

	^ self
		detectDeepestBlockNode: node
		last: (node isBlock ifTrue: [node] ifFalse: [])