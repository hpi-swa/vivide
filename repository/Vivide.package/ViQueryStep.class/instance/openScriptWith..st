as yet unclassified
openScriptWith: someObjects
	"Idiomatic with String, BlockClosure, etc."

	^ VivideLight active ifNotNil: [:vivide |
		vivide
			openScript: self
			withObjects: someObjects]