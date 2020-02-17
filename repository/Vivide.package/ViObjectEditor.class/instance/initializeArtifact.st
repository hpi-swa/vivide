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
				
	contentTree := UiTreeView new
		addColumns: {
			UiItemViewColumnSpec newFrom: {#text -> #tag. #headerText -> 'Property'}.
			(UiItemViewColumnSpec newFrom: {#text -> #text. #icon -> #icon. #headerText -> 'Value'. #balloonText -> #theClass}) balloonTextConverter: [:classOrNil | classOrNil ifNotNil: [:class | class name]]};
		removeHorizontalHeader;
		model: ViObjectEditorModel new;
		setResizeModeForColumn: 2 to: #spaceFill;
		setTextLineWrapForColumn: 2 to: true; 
"		rootIsDecorated: false;"
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		selectionMode: UiViewExtendedSelection;  
		dragDropSpec: (ViUnboxingDragDropSpec new
			dropEnabled: false;
			key: #object;
			dragTransferType: #objects;
			source: self).
			
	contentTree viewport
			indent: (16 * RealEstateAgent scaleFactor) rounded;
			expandedIcon: ViIcons icons8ChevronDownSmall64px1Icon   scaledToDisplay;
			collapsedIcon: ViIcons icons8ChevronRightSmall64px1Icon  scaledToDisplay.
		
	self connect: contentTree signal: #currentNodeChanged: toSelector: #changeReceiverFor:.
	self connect: contentTree signal: #currentNodeChanged: toSelector: #showHaloFor:.
	self connect: contentTree signal: #currentNodeChanged: toSelector: #focusCurrentNodeIn: pattern: #(0).
	self connect: contentTree signal: #menuRequestedAt:for: toSelector: #onMenuRequestedAt:for:. 
	
	container := Morph new
		color: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		cellInset: 1;
		height: 150.
		
	container addAllMorphs: {contentTree.sourceCodeEdit}.
	
	self artifact: container.