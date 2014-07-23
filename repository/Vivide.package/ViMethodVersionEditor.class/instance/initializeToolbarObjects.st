toolbar - initialization
initializeToolbarObjects

	super initializeToolbarObjects.

	self toolbar leftPanel
		addGroup: #classes
		icon: UiSilkIcons carIcon
		contents: [:editor | self theClass ifNil: [#()] ifNotNil: [:cls |
				{cls theNonMetaClass}, cls theNonMetaClass allSuperclasses]]
		helpText: 'No associated classes found.'.

	self toolbar leftPanel
		addGroup: #method
		icon: UiFugueIcons scriptMediumIcon
		contents: [:editor | {editor currentReference}]
		helpText: 'Should not see me.'.