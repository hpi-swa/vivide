updating - results
tryUpdateResults

	(self valueOfProperty: #shouldUpdateResults ifAbsent: [false])
		ifTrue: [
			self setProperty: #shouldUpdateResults toValue: nil.
			self updateResults].