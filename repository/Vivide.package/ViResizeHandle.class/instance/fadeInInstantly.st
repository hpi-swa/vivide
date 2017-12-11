as yet unclassified
fadeInInstantly

	self visible: true.
	
	fadeAnimation ifNotNil: [:anim |
		anim unregister.
		fadeAnimation := nil].