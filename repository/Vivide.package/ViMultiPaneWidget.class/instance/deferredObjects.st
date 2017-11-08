as yet unclassified
deferredObjects
	"Pane API copied from ViPane."
	
	self tupleSize = 1 ifTrue: [^ self objects: 
		(self connections detect: [:c |
			c target == self]) objects].
	
	self tupleSizeDynamic = 1 ifTrue: [^ self objects:
		(self connections detect: [:c |
			c target == self and: [c objects notEmpty]]) objects].

	self objects: (self connections
			select: [:c | c target == self and: [c objects notEmpty]]
			thenCollect: [:c | c objects]) asTuples.