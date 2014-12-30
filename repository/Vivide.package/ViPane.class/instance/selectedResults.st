accessing - view
selectedResults
	"Return the objects users selected and interact with."

	^ self
		valueOfProperty: #lastSelection
		ifAbsent: [#()]