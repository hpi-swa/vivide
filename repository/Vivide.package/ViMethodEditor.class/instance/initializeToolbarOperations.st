toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.
	
	self toolbar rightPanel
		addGroup: #create
		icon: UiFugueIcons plusIcon
		contents: [:editor | {
			{#addMethod. ('Add method to <b>', editor theClass theNonMetaClass, '</b>') asHtmlText. UiFugueIcons newIcon. nil. 1}.
			{#addMethodClass. ('Add method to <b>', editor theClass theMetaClass, '</b>') asHtmlText. UiFugueIcons newIcon. nil. 1}.
			{#tryToggleSide. ('Move method to ', (editor theClass isMeta ifTrue: ['<b>instance side</b>'] ifFalse: ['<b>class side</b>'])) asHtmlText. UiFugueIcons arrow000MediumIcon. nil. 2}}].
		
	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | {
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon. nil. 1}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 1}.
			{#loadPreviousCode. 'Previous version'. UiFugueIcons arrowReturn180LeftIcon. nil. 2}.
			{#loadLastCode. 'Last version'. ViIcons blankIcon. nil. 2}},
			(editor method notNil
				ifTrue: [
					((ViToolSet isTestMethod: editor method)
						ifFalse: [{}]
						ifTrue: [{{#runTest. 'Run test'. UiFugueIcons controlIcon. nil. 3}}]),
					
					{{#tryDeleteMethod. 'Remove method'. UiSilkIcons binEmptyIcon. nil. 4}}]
				ifFalse: [{}])].
			
	self toolbar rightPanel
		addGroup: #protocols
		icon: UiFugueIcons priceTagIcon
		contents: [:editor | editor theClass ifNil: [#()] ifNotNil: [:cls | {
			{#autoCategorizeMethod. ('Categorize method automatically'). UiFugueIcons priceTagArrowIcon. nil. 1}.
			{#fileOut. ('File out'). ViIcons blankIcon. nil. 1}.
			{#toggleBreakpoint. (((BreakpointManager methodHasBreakpoint: editor method) ifTrue: ['Remove'] ifFalse: ['Add']),
				' <b>breakpoint</b> on method entry') asHtmlText. ViIcons blankIcon. nil. 2}}]].