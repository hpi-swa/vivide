decorations
decoration
	"Shortcut to access this pane's decorations by name.
	
	Example: self decoration error
	
	See #decorationNamed:."
	
	^ ViPaneDecorationLookup new
		pane: self;
		yourself