as yet unclassified
animateGrowingBar: bar after: milliseconds

	| anim delay |
	anim := AnimPropertyAnimation new
		target: bar;
		property: #height;
		startValue: 0;
		endValue: bar height;
		duration: animationDuration.
	anim easingCurve conversionBlock: [:x | (-1 * (x-1 raisedTo: 6)) + 1].
	
	milliseconds > 0
		ifTrue: [
			delay := AnimAnimation new duration: milliseconds; yourself.
			AnimCompositeAnimation new
				add: delay;
				add: anim;
				register;
				start]
		ifFalse: [
			anim
				register;
				start].
	
	bar height: 0.