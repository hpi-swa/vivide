as yet unclassified
width

	shouldScale == true
		ifTrue: [^ (RealEstateAgent scaleFactor * 16) roundTo: 8].
		
	^ 16