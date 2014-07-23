toolbar - initialization
initializeToolbarObjects

	super initializeToolbarObjects.
		
	self toolbar leftPanel
		addGroup: #versions
		icon: UiSilkIcons timeIcon
		contents: [:editor | ViMethodVersion versionsOfMethod: editor object referenceInArchive]
		helpText: 'No versions found.'.