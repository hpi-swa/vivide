as yet unclassified
openQueryWith: someObjects
	"Idiomatic with String, BlockClosure, etc."

	^ ActiveVivide ifNotNil: [:vivide | vivide  openQuery: self withObjects: someObjects]