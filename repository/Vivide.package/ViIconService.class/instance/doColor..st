operations
doColor: aColor

	| form |
	form := Form extent: 16@16 depth: 32.
	form 
		fill: (form boundingBox insetBy: 2)
		rule: Form over
		fillColor: aColor.
	^ form