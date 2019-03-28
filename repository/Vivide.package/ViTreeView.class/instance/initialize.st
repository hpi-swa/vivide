initialization
initialize

	super initialize.
	
	self initializeForView: #tree.
	
	self currentViews do: [:treeView |
		treeView viewport
			indent: (16 * RealEstateAgent scaleFactor) rounded;
			expandedIcon: ViIcons icons8ChevronDownSmall64px1Icon  scaledToDisplay;
			collapsedIcon: ViIcons icons8ChevronRightSmall64px1Icon scaledToDisplay].