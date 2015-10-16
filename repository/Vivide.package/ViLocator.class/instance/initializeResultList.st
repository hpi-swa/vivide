initialization
initializeResultList

	resultList := UiTableView new
		showGrid: false;
		extent: 500@300;
		selectionBehavior: #selectRows;  
		removeVerticalHeader;
		removeHorizontalHeader;
		selectionMode: UiViewExtendedSelection;  
		model: UiPropertyItemNode new;
		addColumns: {
			(UiItemViewColumnSpec newFrom: {#text -> #object. #icon -> #object})
				textConverter: [:obj | ViLabelService doObject: obj];
				iconConverter: [:obj | ViIconService doObject: obj].
			(UiItemViewColumnSpec newFrom: {#text -> #object})
				textConverter: [:obj | ('<font color="#AAAAAA">', (ViObjectOriginService doObject: obj), '</font>') asHtmlText]}.
				
	resultList
		dragDropSpec: (ViUnboxingDragDropSpec new
		dropEnabled: false;
		key: #object;
		dragTransferType: #objects).
	
	self connect: resultList eventHandler signal: #mouseLeftDragging: toSelector: #hideResults.
	
	self connect: resultList signal: #doubleClicked: toSelector: #selectResult:.
	self connect: resultList signal: #returnPressed: toSelector: #selectResults.
	
	self connect: resultList eventHandler signal: #focusLostInSubmorph: toSelector: #onFocusLost.
	
	resultList model deferThreshold: 50.

	resultList viewport eventHandler on: #(cmd) -> $o send: #openResults to: self.
	resultList viewport eventHandler on: #(cmd) -> $e send: #evaluateResults to: self.
	resultList viewport eventHandler on: #(cmd) -> $s send: #scriptResults to: self.