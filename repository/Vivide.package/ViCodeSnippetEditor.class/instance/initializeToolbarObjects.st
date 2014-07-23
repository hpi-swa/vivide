toolbar - initialization
initializeToolbarObjects

	super initializeToolbarObjects.

	self toolbar leftPanel
		addGroup: #bindings
		icon: UiFugueIcons blockIcon
		contents: [:editor | editor bindings]
		helpText: 'No name bindings found.'.