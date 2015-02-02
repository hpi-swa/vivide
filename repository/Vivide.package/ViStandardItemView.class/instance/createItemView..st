initialization
createItemView: viewClass

	| view |
	view := viewClass.
	view
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		editTriggers: #(editKeyPressed).
	view selectionMode: UiViewExtendedSelection.
	view groupSpec
		hideIfFirst: false;
		hideIfEmpty: true.
	view dragDropSpec: (ViUnboxingDragDropSpec new
								dropEnabled: false;
								key: #object;
								dragTransferType: #objects;
								source: self).
			
	view disconnectDefaultSignals.
	self connect: view signal: #selectionChanged: toSelector: #onView:selectionChanged: pattern: #(0 1).
	self connect: view signal: #doubleClicked: toSelector: #doubleClicked:.
	self connect: view signal: #returnPressed: toSelector: #returnPressed:.
	
	self connect: view signal: #hovered: toSelector: #triggerPreview:.
	self connect: view signal: #clicked: toSelector: #removeAlarm: pattern: #(=showPreview).
	self connect: view signal: #clicked: to: previewHandler selector: #discardPreview.

	self
		connect: view viewport eventHandler signal: #focusLost
		to: previewHandler selector: #discardPreview.
	view viewport eventHandler
		on: Character escape send: #discardPreview to: previewHandler.

	^ view