as yet unclassified
openQueryWith: someObjects
	"Idiomatic with String, BlockClosure, etc."

	^ VivideLight active ifNotNil: [:vivide |
		vivide
			openQuery: self
			withObjects: someObjects]