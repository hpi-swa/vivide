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
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 1}},
			(editor method notNil
				ifTrue: [
					(editor method isTestMethod
						ifFalse: [{}]
						ifTrue: [{{#runTest. 'Run test'. UiFugueIcons controlIcon. nil. 2}}]),
					
					{{#tryDeleteMethod. 'Remove method'. UiSilkIcons binEmptyIcon. nil. 3}}]
				ifFalse: [{}])].
			
	self toolbar rightPanel
		addGroup: #protocols
		icon: UiFugueIcons priceTagIcon
		contents: [:editor | editor theClass ifNil: [#()] ifNotNil: [:cls | {
			{#autoCategorizeMethod. ('Categorize method automatically'). UiFugueIcons priceTagArrowIcon. nil. 1}.
			{#fileOut. ('File out'). ViIcons blankIcon. nil. 1}.
			{#toggleBreakpoint. (((BreakpointManager methodHasBreakpoint: editor method) ifTrue: ['Remove'] ifFalse: ['Add']),
				' <b>breakpoint</b> on method entry') asHtmlText. ViIcons blankIcon. nil. 2}}]].
	
	(self theClass notNil and: [self theClass inheritsFrom: TestCase]) ifTrue: [
		self toolbar rightPanel
			addGroup: #tests
			icon: UiFugueIcons clipboardTaskIcon
			contents: [:editor | editor method ifNil: [{}] ifNotNil: [:m | m isTestMethod ifFalse: [{}] ifTrue: [
			{{#runTest. 'Run test'. UiFugueIcons controlIcon. nil. 1}}]]]].