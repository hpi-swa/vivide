initializing
setSelector
	| file |
	file := sources at: (sources fileIndexFromSourcePointer: pointer).
	file position: (sources filePositionFromSourcePointer: pointer).
	^ selector := Parser new parseSelector: file nextChunk.