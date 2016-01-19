initialization
initializeArtifact

	| sourceCodeEdit |
	sourceCodeEdit := ViClassDefinitionEdit new
		outerBorderWidth: 0;
		scrollingMode: #never;
		colorFocusBackground: Color white;
		colorFocusBorder: (Color gray: 0.3);
		colorBackground: Color white.
	
	self connect: sourceCodeEdit signal: #editingFinished: toSelector: #updateClass.

	self artifact: sourceCodeEdit.