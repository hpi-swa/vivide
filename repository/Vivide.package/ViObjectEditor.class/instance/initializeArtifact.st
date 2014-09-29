initialization
initializeArtifact

	| sourceCodeEdit contentTree container |
	sourceCodeEdit := ViSourceCodeEdit new
		outerBorderWidth: 1;
		scrollingMode: #limit;
		scrollingLimit: 5;
		colorFocusBackground: Color white;
		colorFocusBorder: (Color gray: 0.3);
		colorBackground: Color white;
		hResizing: #spaceFill;
		autoAccept: false.
		
	sourceCodeEdit eventHandler grabKeyboardOnMouseEnter: true.  
		
	contentTree := UiTreeView new
		addColumns: {
			UiItemViewColumnSpec newFrom: {#text -> #tag. #headerText -> 'Property'}.
			(UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon. #headerText -> 'Value'. #balloonText -> #theClass}) balloonTextConverter: [:classOrNil | classOrNil ifNotNil: [:class | class name]]};
		removeHorizontalHeader;
		model: ViObjectEditorModel new;
		setResizeModeForColumn: 2 to: #spaceFill;
"		rootIsDecorated: false;"
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		selectionMode: UiViewExtendedSelection;  
		dragDropSpec: (ViUnboxingDragDropSpec new
			dropEnabled: false;
			key: #object;
			dragTransferType: #objects).
		
	self connect: contentTree signal: #currentNodeChanged: toSelector: #changeReceiverFor:.
	self connect: contentTree signal: #currentNodeChanged: toSelector: #focusCurrentNodeIn: pattern: #(0).
	
	container := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		height: 150.
		
	container addAllMorphs: {contentTree.sourceCodeEdit}.
	
	sourceCodeEdit hideFull.
	
	self artifact: container.