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
		addGroup: #elements
		icon: UiFugueIcons scriptsTextIcon
		contents: [:editor | protocol ifNil: [#()] ifNotNil: [:p |
				p methods sorted: [:ref1 :ref2 | ref1 selector <= ref2 selector]]]
		helpText: 'No methods in this protocol.'.
		
	self toolbar leftPanel
		addGroup: #protocols
		icon: UiFugueIcons priceTagIcon
		contents: [:editor | self theClass ifNil: [#()] ifNotNil: [:cls |
				(ViProtocol protocolsForClass: cls)
					sorted: [:p1 :p2 | p1 protocolname  <= p2 protocolname]]]
		helpText: 'No protocols found.'.