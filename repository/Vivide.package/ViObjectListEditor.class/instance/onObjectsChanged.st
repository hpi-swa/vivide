as yet unclassified
onObjectsChanged
	"The list of my objects changed somehow. Need to tell this somebody..."

	self flag: #misleadingSelector. "mt: Can be mistaken for a callback from #objectsChanged:. See #initialize."
	self flag: #refactor. "mt: this should be in the artifactlistpage"

	self inputPage owner ifNotNil: [
		"Tell about all of my objects in a list."
		self objectsChanged: (self objects 
			ifEmpty: [#()]
			ifNotEmpty: [:objs | {objs}]).
	
		"Tell about my first object."
		self objectSelectionChanged: (self objects
			ifEmpty: [#()]
			ifNotEmpty: [:objs | {objs first}]).
	].
		
	"Notify current editors about this."
	self inputPage artifactContainers do: [:editor |
		editor onContextChanged].