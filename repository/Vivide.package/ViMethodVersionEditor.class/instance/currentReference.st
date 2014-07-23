accessing
currentReference
	"Return a reference to the method to be used as pointer to the current version of the source code."

	^ MethodReference
		class: self version theClass
		selector: self version selector