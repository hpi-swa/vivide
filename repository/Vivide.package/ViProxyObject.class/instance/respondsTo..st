fallback
respondsTo: symbol

	^ (self class canUnderstand: symbol) or: [super respondsTo: symbol]