drawing
setDrawFlag: symbol

	self setProperty: #drawFlags toValue: (self drawFlags, {symbol}) asSet.
	self redrawLater.