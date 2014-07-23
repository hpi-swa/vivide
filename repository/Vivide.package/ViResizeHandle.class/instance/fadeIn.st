actions
fadeIn

	self visible ifFalse: [^ self].
	
	fadeAnimation
		ifNil: [^ self]
		ifNotNil: [:anim |
			anim unregister.
			fadeAnimation := nil].
	
	super fadeIn.