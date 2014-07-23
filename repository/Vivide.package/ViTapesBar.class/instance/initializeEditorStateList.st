initialization
initializeEditorStateList
	
	| model |
	model := ViEditorStateListModel new
		editorStates: Vivide tapeStates;
		supportedTypes: #(tape tapeStates).

	editorStateList := UiListView new
		animated: true;  
		selectionColor: (Color fromString: '#00B454');
		listSpec: ((UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon. #headerText -> #headerText. #editable -> true}));
		listOrientation: #vertical;  
		dragDropSpec: (ViUnboxingDragDropSpec new
			key: #state;
			dropMode: #between;
			dragTransferType: #tapeStates;
			source: model);
		model: model;
		color: Color transparent;
		helpText: '<font color="#888888">Bookmark tapes here.</font>' asHtmlText.
	editorStateList verticalScrollBar color: Color transparent.
	editorStateList height: 22; hResizing: #spaceFill.

	self connect: editorStateList signal: #objectDropped:type:from: to: model selector: #addObject:type:from:.
	self connect: editorStateList signal: #objectDropped:type:from:afterNode: to: model selector: #insertObject:type:from:after:.
	self connect: editorStateList signal: #objectDropped:type:from:beforeNode: to: model selector: #insertObject:type:from:before:.
	
	self connect: editorStateList signal: #keyStroked:on: to: model selector: #onKeyStroked:on:.