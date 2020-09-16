initialization
initializeArtifact

	| memoEdit |
	memoEdit := ViMemoEdit new
		outerBorderWidth: 0;
		margins: ((15@11) scaleValueToDisplay
			corner: (15@11) scaleValueToDisplay);
		color: (Color gray: 0.95);
		borderColor: (Color gray: 0.7);
		borderWidth: 1;
		scrollingMode: #never.
		
	memoEdit textMorph
		font: UiPlatform current standardDefaultTextFont;
		styler: nil.
	
	self connect: memoEdit signal: #editingFinished: toSelector: #updateText:.
	self connect: memoEdit signal: #editingFinished: toSelector: #clear.

	self artifact: memoEdit.