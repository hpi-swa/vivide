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
		addGroup: #protocols
		icon: UiFugueIcons priceTagIcon
		contents: [:editor | self theClass ifNil: [#()] ifNotNil: [:cls |
				(ViProtocol protocolsForClass: cls)
					sorted: [:p1 :p2 | p1 protocolname  <= p2 protocolname]]]
		helpText: 'No protocols found.'.
		
	self toolbar leftPanel
		addGroup: #comments
		icon: UiSilkIcons commentsIcon
		contents: [:editor | self theClass ifNil: [#()] ifNotNil: [:cls |
				{cls theNonMetaClass}, cls theNonMetaClass allSuperclasses
					collect: [:c | ViClassComment new theClass: c]]]
		helpText: 'No associated classes found.'.
		
	self toolbar leftPanel
		addGroup: #packages
		icon: UiSilkIcons packageIcon
		contents: [:editor | self theClass ifNil: [#()] ifNotNil: [:cls |
				(({cls theNonMetaClass}, cls theNonMetaClass allSuperclasses
					collect: [:c | PackageOrganizer default packageOfClass: c ifNone: []])
					reject: [:pkg | pkg isNil])
					asSet asOrderedCollection sorted: [:p1 : p2 | p1 packageName <= p2 packageName]]]
		helpText: 'No associated packages found.'.
		
	self toolbar leftPanel
		addGroup: #bindings
		icon: UiFugueIcons blockIcon
		contents: [:editor | self theClass ifNil: [#()] ifNotNil: [:cls |
				(cls theNonMetaClass classVarNames collect: [:nm |
					cls theNonMetaClass bindingOf: nm])
"				(cls theMetaClass instVarNames collect: [:nm |
					nm -> (cls theMetaClass instVarNamed: nm)])"]]
		helpText: 'No bindings found.'.