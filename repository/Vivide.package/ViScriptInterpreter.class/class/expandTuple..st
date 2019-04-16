collection handling
expandTuple: aCollapsedTuple
	"Reverse operation to #collapseTuples:."
	
	^ aCollapsedTuple second collect: [:tail |
			{aCollapsedTuple first}, tail]