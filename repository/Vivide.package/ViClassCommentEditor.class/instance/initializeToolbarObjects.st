toolbar - initialization
initializeToolbarObjects

	super initializeToolbarObjects.

	self toolbar leftPanel
		addGroup: #classes
		icon: UiSilkIcons carIcon
		contents: [:editor | self theClass ifNil: [#()] ifNotNil: [:cls |
				{cls theNonMetaClass}]]
		helpText: 'No associated classes found.'.