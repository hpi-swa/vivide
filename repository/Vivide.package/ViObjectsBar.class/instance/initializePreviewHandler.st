preview handling
initializePreviewHandler

	super initializePreviewHandler.
	
	self connect: editorStateList signal: #hovered: toSelector: #triggerPreview:.
	self connect: editorStateList viewport eventHandler signal: #focusLost to: previewHandler selector: #discardPreview.

	self connect: editorStateList signal: #clicked: toSelector: #removeAlarm: pattern: #(=showPreview).
	self connect: editorStateList signal: #clicked: to: previewHandler selector: #discardPreview.
	
	editorStateList viewport eventHandler on: Character escape send: #discardPreview to: previewHandler.
	