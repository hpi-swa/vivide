toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.
		
	self toolbar rightPanel
		addGroup: #edit
		icon: UiSilkIcons pencilIcon
		contents: [:editor | {
			{#acceptChanges. 'Accept changes'. UiFugueIcons tickSmallIcon. nil. 1}.
			{#clear. 'Revert changes'. UiFugueIcons crossSmallIcon. nil. 1}},
			(protocol
				ifNil: [{}]
				ifNotNil: [{{#tryDeleteProtocol. 'Remove protocol'. UiSilkIcons binEmptyIcon. nil. 2}}])].