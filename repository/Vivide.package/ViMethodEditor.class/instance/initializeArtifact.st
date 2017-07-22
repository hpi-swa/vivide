initialization
initializeArtifact

	| sourceCodeEdit |
	sourceCodeEdit := ViMethodSourceCodeEdit new
		outerBorderWidth: 0;
		scrollingMode: #never;
		"scrollingMode: #limit;
		scrollingLimit: 7;"
		colorFocusBackground: Color white;
		colorFocusBorder: (Color gray: 0.3);
		colorBackground: Color white;
		autoCreateArtifacts: true;
		margins: (4@4 corner: 4@4).
		
	self artifact: sourceCodeEdit.