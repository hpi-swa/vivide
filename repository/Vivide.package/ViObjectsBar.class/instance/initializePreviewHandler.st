preview handling
initializePreviewHandler

	super initializePreviewHandler.
	
	self connect: editorStateList signal: #hovered: toSelector: #triggerPreview:.
	self connect: editorStateList viewport eventHandler signal: #focusLost to: previewHandler selector: #discardPreview.
	
	editorStateList viewport eventHandler on: Character escape send: #discardPreview to: previewHandler.
	