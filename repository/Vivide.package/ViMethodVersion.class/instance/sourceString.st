accessing
sourceString

	| file |
	file := sources at: (sources fileIndexFromSourcePointer: pointer).
	file position: (sources filePositionFromSourcePointer: pointer).
	^ file nextChunk