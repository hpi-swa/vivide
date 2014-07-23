as yet unclassified
createListPane

	^ UiListView new in: [:v |
		v hResizing: #spaceFill; vResizing: #spaceFill.
		v selectionMode: UiViewExtendedSelection.
		v groupSpec hideIfFirst: false; hideIfEmpty: true.
		v dragDropSpec: (ViUnboxingDragDropSpec new
			dropEnabled: false;
			key: #object;
			dragTransferType: #objects;
			source: self).
		v horizontalHeaderVisible: false.
		v disconnectDefaultSignals.
	v]