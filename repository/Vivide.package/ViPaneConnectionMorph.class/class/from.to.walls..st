as yet unclassified
from: startPosition to: endPosition walls: someMorphs
	
	^ self new
		makeOpen;
		"beSmoothCurve;"
		makeBackArrow;
		borderWidth: 5;
		borderColor: (Color fromString: '#00CC00'); "fan-out color"
		
		setProperty: #arrowSpec toValue: 5@2;
		
		setFrom: startPosition
		to: endPosition
		walls: someMorphs;
		
		yourself