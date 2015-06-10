as yet unclassified
initialize

	super initialize.
	
	self
		color: Color transparent;
		layoutPolicy: ViOverlappingLayout new;
		addMorph: (PluggableTreeMorph new
			model: self;
			getRootsSelector: #toplevelNodes;
			getSelectedSelector: #currentSelection;
			setSelectedSelector: #currentSelection:;
			hasChildrenSelector: #hasChildrenFor:;
			getChildrenSelector: #childrenFor:;
			getLabelSelector: #labelFor:;
			getIconSelector: #iconFor:;
			getHelpSelector: #balloonTextFor:;
			dragItemSelector: #dragPassengerFor:;
			dragTypeSelector: #dragTypeFor:;
				dragEnabled: true;
				autoDeselect: false;
				yourself).