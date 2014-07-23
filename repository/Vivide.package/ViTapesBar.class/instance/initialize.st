initialization
initialize

	super initialize.
	
	self
		initializeEditorStateList;
		initializePreviewHandler.
	
	self
		color: (Color gray: 0.85);
		changeTableLayout;
		listDirection: #leftToRight;
		layoutInset: (5@2 corner: 0@2);
		cellInset: 3;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
		
	locator := ViLocator new
		helpText: 'Type to locate objects... (CMD+K)';
		hResizing: #rigid;  
		width: 220.
		
	self addAllMorphs: {locator.editorStateList}.