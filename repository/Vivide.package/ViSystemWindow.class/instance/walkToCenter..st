as yet unclassified
walkToCenter: aPoint

	(AnimPropertyAnimation
		on: self
		property: #center
		start: self center
		end: aPoint
		duration: 200)
		register;
		start: #deleteWhenFinished.