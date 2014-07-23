initialization
initialize

	super initialize.

	self
		initializeEditorStateList;
		initializeResizeHandle;
		initializePreviewHandler;
		initializeRecentlyList.

	self
		width: 200;
		color: (Color gray: 0.85);
		changeTableLayout;
		listDirection: #leftToRight;  
		layoutInset: (1@0 corner: 0@0);
		vResizing: #spaceFill;
		hResizing: #rigid.
		
	contentContainer := Morph new
		color: Color transparent;
		changeTableLayout;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
		
	contentContainer addMorph: self editorStateList.
	contentContainer addMorphBack: (UiLabel new text: '<font size="8" color="#DFE3EA">Recently Opened</font>').
	contentContainer addMorphBack: recentlyList.

	self addAllMorphs: {contentContainer.self resizeHandle}.