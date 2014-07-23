updating - view
tryUpdateView

	(self valueOfProperty: #shouldUpdateView ifAbsent: [false])
		ifTrue: [
			self setProperty: #shouldUpdateView toValue: nil.
			self updateView].