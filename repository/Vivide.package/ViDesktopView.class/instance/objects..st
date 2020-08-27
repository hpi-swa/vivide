as yet unclassified
objects: someObjects
	"See #nodes."
	
	self nodes: (someObjects collect: [:object |
		ViModelNode newFrom: { #object -> object }]).