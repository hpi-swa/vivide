initialization
initializeRecentlyList

	| model |
	model := ViRecentlyUsedHistoryModel new.

	recentlyList := UiListView new
		animated: true;
		selectionMode: UiViewExtendedSelection;  
		selectionColor: (Color fromString: '#C6CBD6') lighter;
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon. #balloonText -> #balloonText}));
		dragDropSpec: (ViUnboxingDragDropSpec new
			key: #object;
			dropEnabled: false;  
			dragTransferType: #objects;
			source: model);
		color: (Color fromString: '#C6CBD6') lighter;
		helpText: '<font color="#888888">Recently viewed objects.</font>' asHtmlText.
	recentlyList verticalScrollBar
		color: Color transparent;
		buttonColor: (Color fromString: '#C6CBD6').
	recentlyList
		hResizing: #spaceFill;
		vResizing: #rigid; height: 400. self flag: #magicNumber.
	
	recentlyList groupSpec hideIfFirst: false.  
	recentlyList groupSpec hideIfEmpty: false.
		
	recentlyList model: model.
		
	self connect: recentlyList signal: #doubleClicked: toSelector: #selectNode:.
	self connect: recentlyList signal: #returnPressed: toSelector: #selectNode:.