initialization
initializeFrequentlyList

	| model |
	model := ViFrequentlyUsedHistoryModel new.

	frequentlyList := UiListView new
		animated: true;
		selectionColor: (Color fromString: '#C6CBD6') lighter;
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon. #balloonText -> #balloonText}));
		dragDropSpec: (ViUnboxingDragDropSpec new
			key: #object;
			dropEnabled: false;  
			dragTransferType: #objects;
			source: model);
		color: (Color fromString: '#C6CBD6') lighter;
		helpText: '<font color="#888888">Frequently viewed objects.</font>' asHtmlText.
	frequentlyList verticalScrollBar color: Color transparent.
	frequentlyList
		hResizing: #spaceFill;
		vResizing: #rigid; height: 163. self flag: #magicNumber.
	
	frequentlyList model: model.
	
	self connect: frequentlyList signal: #doubleClicked: toSelector: #selectNode:.
	self connect: frequentlyList signal: #returnPressed: toSelector: #selectNode:.