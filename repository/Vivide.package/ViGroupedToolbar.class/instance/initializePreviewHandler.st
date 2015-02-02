preview handling
initializePreviewHandler

	previewHandler := ViObjectPreviewHandler new.
	
	self connect: secondaryList signal: #hovered: toSelector: #triggerPreview:.
	self connect: secondaryList viewport eventHandler signal: #focusLost to: previewHandler selector: #discardPreview.
	
	self connect: secondaryList signal: #clicked: toSelector: #removeAlarm: pattern: #(=showPreview).
	self connect: secondaryList signal: #clicked: to: previewHandler selector: #discardPreview.
	
	secondaryList viewport eventHandler on: Character escape send: #discardPreview to: previewHandler.
	