initialization
initializeArtifact

	| sourceCodeEdit |
	sourceCodeEdit := ViMethodSourceCodeEdit new
		outerBorderWidth: 0;
		scrollingMode: #limit;
		color: (Color gray: 0.85);
		readOnly: true.

	self artifact: sourceCodeEdit.