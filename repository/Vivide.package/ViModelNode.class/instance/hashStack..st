stack
hashStack: aStack
	"See #hasSameStack:."
	
	| hash |
	hash := 0.
	aStack linkedList linksDo: [:link | hash := hash bitXor: link element hash].
	^ hash hashMultiply