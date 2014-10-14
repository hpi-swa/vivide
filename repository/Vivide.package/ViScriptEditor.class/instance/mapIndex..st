as yet unclassified
mapIndex: index
	"Update the current position in the map."

	(self map indexOf: #current) in: [:oldIndex |
		oldIndex > 0 ifTrue: [self map at: oldIndex put: #default]].
	self map at: index put: #current.
	self redrawLater.