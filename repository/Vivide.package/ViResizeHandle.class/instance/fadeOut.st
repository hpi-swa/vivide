actions
fadeOut

	self visible ifFalse: [^ self].
	mouseDownEventPosition ifNotNil: [^ self].
	
	fadeAnimation ifNil: [fadeAnimation := (AnimAlphaBlendAnimation
		fadeOutOn: self
		duration: 200)
		register;
		start: #keepWhenFinished].