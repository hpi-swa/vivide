initializing
parseSource
	| file position chunk |
	file := sources at: (sources fileIndexFromSourcePointer: pointer).
	position := sources filePositionFromSourcePointer: pointer.
	chunk := ''.
	position > file size ifTrue: [self error: 'Invalid source pointer'].
	
	file position: (0 max: position-150).  	"Skip back to before the preamble"
		[file position < (position-1)]  	"then pick it up from the front"
			whileTrue: [chunk := file nextChunk].
	
	self parseChunk: chunk.