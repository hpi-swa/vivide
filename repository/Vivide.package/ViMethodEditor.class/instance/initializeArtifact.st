initialization
initializeArtifact

	| sourceCodeEdit |
	sourceCodeEdit := ViMethodSourceCodeEdit new
		outerBorderWidth: 0;
		scrollingMode: #never;
		colorFocusBackground: Color white;
		colorFocusBorder: (Color gray: 0.3);
		colorBackground: Color white;
		autoCreateArtifacts: true;
		margins: (4@0 corner: 4@4).
		
	self artifact: sourceCodeEdit.