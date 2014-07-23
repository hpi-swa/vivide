toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.
	
	self toolbar rightPanel
		addGroup: #create
		icon: UiFugueIcons plusIcon
		contents: [:editor | editor theClass ifNil: [#()] ifNotNil: [:cls | {
					{#addMethod. ('Add method to <b>', cls theNonMetaClass, '</b>') asHtmlText. UiFugueIcons newIcon. nil. 1}.
					{#addMethodClass. ('Add method to <b>', cls theMetaClass, '</b>') asHtmlText. UiFugueIcons newIcon. nil. 1}.
					{#addInstVarAccessors. ('Add missing accessors') asHtmlText. ViIcons blankIcon. nil. 2}.					
					{#createInstance. ('Create new instance'). UiFugueIcons starSmallIcon. nil. 3}},
						((cls inheritsFrom: Morph)
							ifFalse: [{}]
							ifTrue: [{{#createMorphInHand. ('Create new <b>morph</b> in hand' asHtmlText). UiFugueIcons starSmallIcon. nil. 3}}])]].

	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | {
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon. nil. 1}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 1}},
			(editor theClass
				ifNil: [{}]
				ifNotNil: [:cls |
					((cls inheritsFrom: TestCase)
						ifFalse: [{}]
						ifTrue: [{{#runAllTests. 'Run all tests'. UiFugueIcons controlIcon. nil. 2}}]),
						
					{{#tryDeleteClass. 'Remove class'. UiSilkIcons binEmptyIcon. nil. 3}}])].
			
	self toolbar rightPanel
		addGroup: #protocols
		icon: UiFugueIcons priceTagIcon
		contents: [:editor | editor theClass ifNil: [#()] ifNotNil: [:cls | {
			{#addProtocol. ('Add protocol to <b>', cls theNonMetaClass, '</b>') asHtmlText. UiFugueIcons newIcon. nil. 1}.
			{#addProtocolClass. ('Add protocol to <b>', cls theMetaClass, '</b>') asHtmlText. UiFugueIcons newIcon. nil. 1}.
			{#autoCategorizeMethods. ('Categorize methods automatically'). UiFugueIcons priceTagArrowIcon. nil. 2}.
			{#removeEmptyCategories. ('Remove empty protocols'). ViIconService blankIcon. nil. 2}}]].