as yet unclassified
initialize

	super initialize.
	
	currentSelectionIndex := 0.
	
	self
		color: Color transparent;
		layoutPolicy: ViOverlappingLayout new;
		addMorph: ((PluggableListMorphPlus
			on: self
			list: #list
			selected: #currentSelectionIndex
			changeSelected: #currentSelectionIndex:)
				getIconSelector: #iconAtIndex:;
				dragItemSelector: #dragPassengerAtIndex:;
				dragTypeSelector: #dragTransferTypeAtIndex:;
				dragEnabled: true;
				autoDeselect: false;
				yourself).