drawing
clearDrawFlag: symbol

	self setProperty: #drawFlags toValue: (self drawFlags copyWithout: symbol).
	self redrawLater.   