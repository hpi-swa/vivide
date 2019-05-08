as yet unclassified
respondsTo: selector

	^ (super respondsTo: selector) or: [
		selector first isDigit and: [(selector count: [:c | c = $:]) = 1]]