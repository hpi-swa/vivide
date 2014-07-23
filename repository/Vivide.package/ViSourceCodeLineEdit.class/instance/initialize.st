initialization
initialize
	
	super initialize.
	
	self textMorph
		font: UiPlatform current standardCodeFont;
		styler: ViTextStyler new;
		margins: (4@0 corner: 4@0).