as yet unclassified
setDrawFlag: symbol

	self setProperty: #drawFlags toValue: (self drawFlags, {symbol}) asSet.
	self redrawLater.