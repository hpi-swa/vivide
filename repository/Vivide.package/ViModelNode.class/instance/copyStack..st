stack
copyStack: aStack

	aStack copy in: [:copy |
		copy linkedList linksDo: [:link | link element: link element copy].
		^ copy]