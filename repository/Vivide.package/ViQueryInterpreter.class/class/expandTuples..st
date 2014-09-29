as yet unclassified
expandTuples: someCollapsedTuples
	"Reverse operation to #collapseTuples:."
	
	^ someCollapsedTuples gather: [:t |
		t second collect: [:tail | {t first}, tail]]