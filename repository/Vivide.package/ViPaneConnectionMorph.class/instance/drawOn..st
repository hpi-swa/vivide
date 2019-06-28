as yet unclassified
drawOn: aCanvas

	| bc |
	bc := self borderColor adjustBrightness: -0.4.
	
	super drawOn: ((aCanvas copyOffset: 0 @ -2) shadowColor: bc; yourself).
	super drawOn: ((aCanvas copyOffset: 2@ 0) shadowColor: bc; yourself).
	super drawOn: ((aCanvas copyOffset: -2 @ 0) shadowColor: bc; yourself).
	super drawOn: ((aCanvas copyOffset: 0@2) shadowColor: bc; yourself).
	
	super drawOn: aCanvas.