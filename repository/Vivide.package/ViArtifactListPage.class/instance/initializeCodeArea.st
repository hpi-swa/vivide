initialization
initializeCodeArea

	self ui codeArea verticalScrollBar
		singleStep: 20;
		outerBorderWidth: 0;
		color: Color transparent.
	self ui codeArea transformMorph
		color: (Color gray: 0.3).

	self ui codeArea widget: ViArtifactContainerColumn new.
