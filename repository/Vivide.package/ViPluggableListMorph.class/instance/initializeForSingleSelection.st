as yet unclassified
initializeForSingleSelection

	self removeAllMorphs.
	
	selectionMap := nil.
	
	self
		addMorph: ((PluggableListMorphPlus
			on: self
			list: #list
			selected: #currentSelectionIndex
			changeSelected: #currentSelectionIndex:
			menu: #menu:evaluate:)
				getIconSelector: #iconAtIndex:;
				dragItemSelector: #dragPassengerAtIndex:;
				dragTypeSelector: #dragTransferTypeAtIndex:;
				dragEnabled: true;
				autoDeselect: false;
				yourself).