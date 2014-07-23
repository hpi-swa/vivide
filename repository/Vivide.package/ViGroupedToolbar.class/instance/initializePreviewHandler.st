preview handling
initializePreviewHandler

	previewHandler := ViObjectPreviewHandler new.
	
	self connect: secondaryList signal: #hovered: toSelector: #triggerPreview:.
	self connect: secondaryList viewport eventHandler signal: #focusLost to: previewHandler selector: #discardPreview.
	
	secondaryList viewport eventHandler on: Character escape send: #discardPreview to: previewHandler.
	