initialization
initializeArtifact

	edit := ViQueryDefinitionEdit new
		hResizing: #spaceFill;
		outerBorderWidth: 0;
		disableChooseDefinition;
		scrollingMode: #limit;
		autoCreateArtifacts: true.
	edit eventHandler grabKeyboardOnMouseEnter: true.
		
	self connect: edit signal: #editingFinished: toSelector: #tryAcceptSourceCode.
	
	self artifact: edit.