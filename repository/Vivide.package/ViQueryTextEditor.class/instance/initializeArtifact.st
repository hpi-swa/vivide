initialization
initializeArtifact

	| textEdit |
	textEdit := ViSourceCodeEdit new
		model: ViWorkspace new;
		scrollingMode: #limit;
		outerBorderWidth: 0;
		autoCreateArtifacts: false.
	
	self flag: #refactor.
	textEdit widget styler workspace: textEdit model.
		
	"self connect: textEdit signal: #editingFinished: toSelector: #updateToolbars.
	self connect: textEdit model signal: #contextChanged toSelector: #updateToolbars.
	self connect: textEdit model signal: #receiverChanged toSelector: #updateToolbars."
	
	self artifact: textEdit.