as yet unclassified
initializeForMultiSelection

	self removeAllMorphs.
	
	selectionMap := Array new.
	
	self
		addMorph: ((PluggableListMorphOfMany
			on: self
			list: #list
			primarySelection: #currentSelectionIndex
			changePrimarySelection: #currentSelectionIndex:
			listSelection: #isSelectedAt:
			changeListSelection: #setAt:isSelected:
			menu: nil)
				getIconSelector: #iconAtIndex:;
				"dragItemSelector: #dragPassengerAtIndex:;
				dragTypeSelector: #dragTransferTypeAtIndex:;
				dragEnabled: true;"
				autoDeselect: false;
				yourself).