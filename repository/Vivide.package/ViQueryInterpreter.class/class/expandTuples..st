collection handling
expandTuples: someCollapsedTuples
	"Reverse operation to #collapseTuples:."
	
	^ someCollapsedTuples gather: [:t | self expandTuple: t]