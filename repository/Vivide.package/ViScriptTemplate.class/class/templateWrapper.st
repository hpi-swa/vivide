templates
templateWrapper
	"Wrap all objects in a node with some properties if desired. Can be used to create new objects ad-hoc, e.g., for manual structuring."
	
	^ (41 to: 44) -> '[:in :out | out add: {#objects -> in},
	[{}] value]'