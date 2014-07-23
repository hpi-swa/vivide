toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.
	
	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons timeIcon
		contents: [:editor | {{#revert. 'Revert method to this version'. UiSilkIcons timeGoIcon}}].