*vivide-queries
openQueryWith: someObjects

	^ ActiveVivide ifNotNil: [:vivide | vivide  openQuery: self withObjects: someObjects]