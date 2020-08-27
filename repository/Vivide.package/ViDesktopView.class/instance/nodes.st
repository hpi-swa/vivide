accessing
nodes
	"See #objects:."
	
	^ self objects collect: [:object |
		ViModelNode newFrom: { #object -> object } ]