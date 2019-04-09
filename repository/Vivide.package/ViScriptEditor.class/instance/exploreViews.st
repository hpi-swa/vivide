actions - debugging
exploreViews
	
	VivideLight active ifNotNil: [:vivide |
		vivide exploreAllViewsForScript: self thisStep using: self input].