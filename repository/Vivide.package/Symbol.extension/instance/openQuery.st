*vivide-queries
openQuery

	^ VivideLight active ifNotNil: [:vivide | vivide openQuery: self]