as yet unclassified
initialize

	super initialize.
	self color: Color transparent.

	label := 'Label'.

	minVal := 0.0.
	maxVal := 10.0.

	firstVal := nil. "auto"
	incVal := nil. "auto"
	
	precision := 1. "i.e. roundTo: 0.1"

"	minVal := 0.65.
	maxVal := 2.19.
	firstVal := 0.8.
	incVal := 0.2."
	

"	minVal := 0.6.
	maxVal := 2.2.
	firstVal := 1.0.
	incVal := 0.5.
"
	orientation := #vertical.