as yet unclassified
inputForChildren
	"Choose tuple or single object. See how interpreter creates nodes."

	^ self
		at: #objects
		ifAbsent: [self
			at: #object
			ifAbsent: [nil]]