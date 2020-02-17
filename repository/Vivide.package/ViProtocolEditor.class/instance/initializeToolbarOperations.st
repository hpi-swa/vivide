toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.

	self toolbar rightPanel
		addGroup: #create
		icon: UiFugueIcons plusIcon
		contents: [:editor | {
			{#addMethod. ('Add method to <b>', editor theClass, '</b>') asHtmlText. UiFugueIcons newIcon. nil. 1}}].
				
	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | {
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon. nil. 1}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 1}},
			(protocol
				ifNil: [{}]
				ifNotNil: [{{#tryDeleteProtocol. 'Remove protocol'. UiSilkIcons binEmptyIcon. nil. 2}}])].