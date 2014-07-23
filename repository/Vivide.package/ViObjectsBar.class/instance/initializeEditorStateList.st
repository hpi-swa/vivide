initialization
initializeEditorStateList
	
	| model |
	model := ViEditorStateListModel new
		editorStates:  Vivide editorStates;
		supportedTypes: #(editor editorStates objects artifact).

	editorStateList := UiListView new
		animated: true;
		selectionColor: (Color fromString: '#C6CBD6');
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon. #balloonText -> #balloonText. #editable -> true}));
		dragDropSpec: (ViUnboxingDragDropSpec new
			key: #state;
			dropMode: #between;
			dragTransferType: #editorStates;
			source: model);
		model: model;
		color: Color transparent;
		helpText: '<font color="#888888">Bookmark<br>objects<br>here.</font>' asHtmlText.
	editorStateList verticalScrollBar
		color: Color transparent;
		buttonColor: (Color fromString: '#C6CBD6').
	editorStateList
		hResizing: #spaceFill;
		vResizing: #spaceFill.

	editorStateList editTriggers: #(editKeyPressed alphaNumericKeyPressed).
	
	self connect: editorStateList signal: #objectDropped:type:from: to: model selector: #addObject:type:from:.
	self connect: editorStateList signal: #objectDropped:type:from:afterNode: to: model selector: #insertObject:type:from:after:.
	self connect: editorStateList signal: #objectDropped:type:from:beforeNode: to: model selector: #insertObject:type:from:before:.
	
	self connect: editorStateList signal: #keyStroked:on: to: model selector: #onKeyStroked:on:.
	self connect: editorStateList signal: #doubleClicked: toSelector: #selectEditorState:.
	self connect: editorStateList signal: #returnPressed: toSelector: #selectEditorState:.