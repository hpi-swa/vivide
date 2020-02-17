as yet unclassified
circle: color

	| form |
	form := Form extent: 32@32 depth: 32.
	form getCanvas
		fillOval: (4@4 corner: (form extent - (8@8)))
		color: color.
	^ form