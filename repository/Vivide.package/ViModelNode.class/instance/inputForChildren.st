as yet unclassified
inputForChildren
	"Choose tuple or single object. See how interpreter creates nodes."

	^ self
		at: #objects
		ifAbsent: [
			"Avoid tuple flattening by accident; wrap into array."
			(self at: #object ifAbsent: [nil]) wrapList]