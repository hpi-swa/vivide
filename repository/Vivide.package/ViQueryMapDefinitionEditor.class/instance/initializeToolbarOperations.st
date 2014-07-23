toolbar - initialization
initializeToolbarOperations

	super initializeToolbarOperations.
	
	self toolbar rightPanel
		addGroup: #clone
		icon: UiFugueIcons blueDocumentCopyIcon
		contents: [:editor | {
			{#useNewCode. 'Clone update definitions'. ViIcons blankIcon. nil. 1}.
			}].