initialization
initializeArtifact

	| sourceCodeEdit |
	sourceCodeEdit := ViClassDefinitionEdit new
		outerBorderWidth: 0;
		scrollingMode: #limit;
		colorFocusBackground: Color white;
		colorFocusBorder: (Color gray: 0.3);
		colorBackground: Color white.
	
	self connect: sourceCodeEdit signal: #editingFinished: toSelector: #updateClass.

	sourceCodeEdit eventHandler grabKeyboardOnMouseEnter: true.

	self artifact: sourceCodeEdit.