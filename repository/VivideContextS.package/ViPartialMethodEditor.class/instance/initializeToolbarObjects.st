as yet unclassified
initializeToolbarObjects

	super initializeToolbarObjects.

	"self toolbar leftPanel
		addGroup: #classes
		icon: UiSilkIcons carIcon
		contents: [:editor | editor theClass ifNil: [#()] ifNotNil: [:cls |
				{cls theNonMetaClass}, cls theNonMetaClass allSuperclasses]]
		helpText: 'No associated classes found.'."

	self toolbar leftPanel
		addGroup: #partialMethods
		icon: UiFugueIcons scriptStampIcon
		contents: [:editor | editor siblings]
		helpText: 'No partial methods found.'.