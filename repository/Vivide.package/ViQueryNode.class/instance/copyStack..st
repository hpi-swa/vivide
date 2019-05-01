accessing
copyStack: aStack

	aStack copy in: [:copy |
		copy linkedList do: [:link | link element: link element copy].
		^ copy]