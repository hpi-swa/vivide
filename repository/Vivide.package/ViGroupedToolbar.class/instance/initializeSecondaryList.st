initialization
initializeSecondaryList

	secondaryList := UiListView new
		width: (TextStyle defaultFont widthOf: $m) * 15;
		color: self highlightColor;
		listSpec: (UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon});
		selectionMode: UiViewExtendedSelection;
		dragDropSpec: (ViUnboxingDragDropSpec new
			dropEnabled: false;
			key: #object;
			dragTransferType: #objects;
			source: nil).
			
	self connect: secondaryList signal: #doubleClicked: toSelector: #requestArtifact:.