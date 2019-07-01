as yet unclassified
initialize

	super initialize.

	self
		makeOpen;
		"beSmoothCurve;"
		makeBackArrow;
		borderWidth: 5;
		borderColor: (Color fromString: '#00CC00'); "fan-out color"
		
		setProperty: #arrowSpec toValue: 5@2.