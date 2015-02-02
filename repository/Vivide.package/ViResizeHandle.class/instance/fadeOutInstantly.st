as yet unclassified
fadeOutInstantly

	self visible ifFalse: [^ self].
	
	fadeAnimation ifNil: [fadeAnimation := (AnimAlphaBlendAnimation
		fadeOutOn: self
		duration: 200)
		register;
		start: #keepWhenFinished;
		finish].