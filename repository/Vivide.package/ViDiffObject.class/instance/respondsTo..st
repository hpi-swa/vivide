as yet unclassified
respondsTo: symbol

	^ (self class canUnderstand: symbol) or: [super respondsTo: symbol]