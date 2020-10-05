as yet unclassified
addMargins: pixels

	| val |
	val := pixels / self scaleFactor.
	minVal := minVal - val.
	maxVal := maxVal + val.
"	self changed."