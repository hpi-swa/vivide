preview handling
initializePreviewHandler

	previewHandler := ViObjectPreviewHandler new.
	
	self connect: resultList signal: #hovered: toSelector: #triggerPreview:.
	self connect: resultList viewport eventHandler signal: #focusLost to: previewHandler selector: #discardPreview.
	
	self connect: resultList signal: #clicked: toSelector: #removeAlarm: pattern: #(=showPreview).
	self connect: resultList signal: #clicked: to: previewHandler selector: #discardPreview.
	
	resultList viewport eventHandler on: Character escape send: #discardPreview to: previewHandler.
	