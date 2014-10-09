templates
templateWrapper
	"Wrap all objects in a node with some properties if desired."
	
	^ (41 to: 44) -> '[:in :out | out add: {#objects -> in},
	[{}] value]'