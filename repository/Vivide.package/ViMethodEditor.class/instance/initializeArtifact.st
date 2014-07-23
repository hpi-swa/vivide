initialization
initializeArtifact

	| sourceCodeEdit |
	sourceCodeEdit := ViMethodSourceCodeEdit new
		outerBorderWidth: 0;
		scrollingMode: #limit;
		colorFocusBackground: Color white;
		colorFocusBorder: (Color gray: 0.3);
		colorBackground: Color white;
		autoCreateArtifacts: true.
		
	self connect: sourceCodeEdit signal: #editingFinished: toSelector: #updateToolbars.
	self connect: sourceCodeEdit model signal: #contextChanged toSelector: #updateToolbars.
	self connect: sourceCodeEdit model signal: #receiverChanged toSelector: #updateToolbars.

	sourceCodeEdit eventHandler grabKeyboardOnMouseEnter: true.

	self artifact: sourceCodeEdit.