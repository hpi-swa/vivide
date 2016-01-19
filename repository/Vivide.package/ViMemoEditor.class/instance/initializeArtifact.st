initialization
initializeArtifact

	| memoEdit |
	memoEdit := ViMemoEdit new
		outerBorderWidth: 0;
		margins: (15@10 corner: 15@10);
		scrollingMode: #never.
		
	memoEdit textMorph
		font: UiPlatform current standardDefaultTextFont;
		styler: nil.
	
	self connect: memoEdit signal: #editingFinished: toSelector: #updateText:.
	self connect: memoEdit signal: #editingFinished: toSelector: #clear.

	self artifact: memoEdit.