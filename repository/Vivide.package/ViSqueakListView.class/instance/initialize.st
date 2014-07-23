as yet unclassified
initialize

	super initialize.
	listView := PluggableListMorphPlus
		on: self
		list: #list
		selected: #listIndex
		changeSelected: #listIndex:.
	listView
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	self
		color: Color transparent;
		changeTableLayout;
		addMorph: listView.
		